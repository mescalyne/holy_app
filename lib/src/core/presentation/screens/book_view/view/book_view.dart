import 'dart:async';

import 'package:afon_app/src/core/presentation/router/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/router/bloc/event.dart';
import 'package:afon_app/src/core/presentation/widgets/buttons/button_round.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:afon_app/src/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BookViewPage extends StatefulWidget {
  static const id = '/book_view';
  final String bookUrl;
  final String title;

  BookViewPage({required this.bookUrl, required this.title});

  @override
  _BookViewPageState createState() => _BookViewPageState();
}

class _BookViewPageState extends State<BookViewPage> {
  late WebViewController _controller;
  final progressLoad = BehaviorSubject<int>();
  bool loadView = true;
  bool errorLoad = false;

  Completer<WebViewController> _controllerCompleter =
      Completer<WebViewController>();

  Future<bool> _goBack(BuildContext context) async {
    if (errorLoad) {
      BlocProvider.of<RouterBloc>(context).add(RouterEvent.pop());
      return true;
    }
    if (await _controller.canGoBack()) {
      _controller.goBack();
      return false;
    } else {
      BlocProvider.of<RouterBloc>(context).add(RouterEvent.pop());
      return true;
    }
  }

  @override
  void initState() {
    progressLoad.add(0);
    super.initState();
  }

  static const _heightProgressIndicator = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: NeverScrollableScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text(
              widget.title,
              maxLines: 2,
              style: AfonTextStyle.rossikaHeading2(color: AfonTheme.darkBrown),
            ),
            automaticallyImplyLeading: false,
            leading: GestureDetector(
              onTap: () => _goBack(context),
              child: Container(
                child: Icon(
                  AfonIcons.chevron_left,
                  size: 25,
                  color: AfonTheme.darkBrown,
                ),
              ),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  _controller.scrollTo(0, 0);
                },
                child: Container(
                  margin: EdgeInsets.only(right: 15),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      AfonIcons.chevron_left,
                      size: 25,
                      color: AfonTheme.darkBrown,
                    ),
                  ),
                ),
              ),
            ],
            toolbarHeight: 60,
            backgroundColor: AfonTheme.backgroundColor,
            bottom: PreferredSize(
              preferredSize: Size(
                  MediaQuery.of(context).size.width, _heightProgressIndicator),
              child: StreamBuilder<int>(
                  stream: progressLoad.stream,
                  builder: (context, _progress) {
                    return Container(
                      alignment: Alignment.centerLeft,
                      height: _heightProgressIndicator,
                      decoration: BoxDecoration(
                        color: AfonTheme.backgroundColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: double.infinity,
                      child: Container(
                        height: _heightProgressIndicator,
                        width: 3 +
                            (MediaQuery.of(context).size.width - 3) /
                                100 *
                                (_progress.data ?? 0),
                        decoration: BoxDecoration(
                          color: loadView
                              ? errorLoad
                                  ? AfonTheme.error
                                  : AfonTheme.accentGreen
                              : AfonTheme.backgroundColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          SliverFillRemaining(
            child: Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).padding.bottom,
              ),
              color: AfonTheme.backgroundColor,
              child: errorLoad
                  ? Container(
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.only(left: 25, right: 25, top: 50),
                              child: Text(
                                AfonDictionary.bookViewErrorMessage,
                                style: AfonTextStyle.asketTextRegular(
                                    color: AfonTheme.darkBrown),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            ButtonRound(
                                text: AfonDictionary.bookViewErrorButton,
                                onPress: () {
                                  progressLoad.add(0);
                                  _controllerCompleter =
                                      Completer<WebViewController>();
                                  setState(() {
                                    errorLoad = false;
                                  });
                                })
                          ],
                        ),
                      ),
                    )
                  : WebView(
                      backgroundColor: AfonTheme.backgroundColor,
                      initialUrl: widget.bookUrl,
                      javascriptMode: JavascriptMode.disabled,
                      onWebViewCreated: (WebViewController webViewController) {
                        _controllerCompleter.future
                            .then((value) => _controller = value);
                        _controllerCompleter.complete(webViewController);
                      },
                      onPageStarted: (String url) {
                        setState(() {
                          loadView = true;
                        });
                      },
                      onProgress: (int progress) {
                        progressLoad.add(progress);
                      },
                      onPageFinished: (String url) {
                        if (!errorLoad) {
                          Future.delayed(Duration(milliseconds: 500))
                              .then((value) {
                            setState(() {
                              loadView = false;
                            });
                          });
                        }
                      },
                      onWebResourceError: (WebResourceError e) {
                        Log.error(e.errorCode.toString());
                        if (e.errorCode == -1009 || e.errorCode == -2) {
                          //Нет интернета
                          progressLoad.add(100);
                          setState(() {
                            errorLoad = true;
                            loadView = true;
                          });
                        }
                      },
                      debuggingEnabled: true,
                      gestureNavigationEnabled: true,
                    ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    progressLoad.close();
    super.dispose();
  }
}
