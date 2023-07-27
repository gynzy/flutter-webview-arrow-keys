# flutter_webview_arrow_keys

This Flutter project demonstrates a work-around that enables hardware arrow keys in [webview_flutter](https://pub.dev/packages/webview_flutter).

## Issue

Without this work-around hardware arrow keys do not work in [webview_flutter](https://pub.dev/packages/webview_flutter), as is outlined in https://github.com/flutter/flutter/issues/102505. 

The issue occurs on the following platforms:

1. Android with a hardware keyboard attached
2. Chromebook with hardware keyboard
3. iOS with a hardware keyboard attached

## Solution

Apparently the arrow keys from the hardware keyboard get "eaten" by Flutter and never reach the included webview. By listening to the arrow keys and instructing Flutter to return them to the platform the arrow keys function again.

## Reproduction of the issue

_Note: this issue was tested on Flutter 3.10.6._

1. Clone this project.
2. Disable the `onKey` handler of the `Focus` node.
3. Run the project on an iOS, Android or Chromebook device with a hardware keyboard.
4. Enter text in the search text field and use left and right keyboard arrow keys to move the cursor.
5. Expected: cursor moves left and right.
6. Actual: cursor does not move.

## Related issue

https://github.com/flutter/flutter/issues/102505
