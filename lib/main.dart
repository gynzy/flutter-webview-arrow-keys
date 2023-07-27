import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Focus(
        onKey: (node, event) {
          // Allow webview to handle cursor keys. Without this, the
          // arrow keys seem to get "eaten" by Flutter and therefore
          // never reach the webview.
          // (https://github.com/flutter/flutter/issues/102505).
          if (!kIsWeb) {
            if (event.isKeyPressed(LogicalKeyboardKey.arrowLeft) ||
                event.isKeyPressed(LogicalKeyboardKey.arrowRight) ||
                event.isKeyPressed(LogicalKeyboardKey.arrowUp) ||
                event.isKeyPressed(LogicalKeyboardKey.arrowDown)) {
              return KeyEventResult.skipRemainingHandlers;
            }
          }

          return KeyEventResult.ignored;
        },
        child: WebViewWidget(
          controller: WebViewController()
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..loadRequest(
              Uri.parse('https://www.duckduckgo.com'),
            ),
        ),
      ),
    );
  }
}
