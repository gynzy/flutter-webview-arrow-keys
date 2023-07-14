# flutter_webview_arrow_keys

A Flutter project to demonstrate the arrow keys issue in [webview_flutter](https://pub.dev/packages/webview_flutter).

## Issue

The issue is that the arrow keys do not work in [webview_flutter](https://pub.dev/packages/webview_flutter). This is a problem for Flutter applications that run on iOS, Android or Chromebook. The keyboard arrow keys don't work in webview content.

## Reproduce

1. Run this project on an iOS, Android or Chromebook device with keyboard
2. Enter text in the search text field and use left and right keyboard arrow keys to move the cursor
3. Expected: cursor moves left and right
4. Actual: cursor does not move

## Device configuation

We could reproduce this issue on the following devices:
1. iOS iPad with bluetooth keyboard attached
2. Android tablet with usb keyboard attached
3. Chromebook with keyboard

## Related issue

https://github.com/flutter/flutter/issues/102505