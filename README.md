# React Chrome Extension (Manifest v3) Boilerplate

Starting point for building Chrome Browser Extension popup and service worker based background script. Contains a custom Makefile to prepare your build for an unpacked local upload to chrome://extensions and prepares a zip file for direct upload to the Chrome Web Store.

## Available Scripts

In the root project directory, you can run:

### `make build`

Prepares the app build for upload to chrome://extensions/ and the Google Chrome Webstore \
It correctly bundles your project and optimizes the build for use as a Chrome Extension. \

This command creates two things:

1.  A `./dist` directory that contains the files for `chrome://extensions/` -- use this folder to load the unpacked extension
2.  A file called latestBuild.zip, this .zip can be uploaded to the Developer Console when submitting your extension to the Chrome Web Store

#### Limitations

1. Does not currently handle [Options](https://developer.chrome.com/docs/extensions/mv3/options/) or [Content Scripts](https://developer.chrome.com/docs/extensions/mv3/content_scripts/). In most cases the options menu can be built into your popup.
