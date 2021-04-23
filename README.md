# React Chrome Extension (Manifest v3) Boilerplate

Starting point for creating a Chrome Browser Extension popup and service-worker based background script. Contains a custom Makefile to prepare your build for an unpacked local upload to chrome://extensions and prepares a zip file for direct upload to the Chrome Web Store.

Traditionally browser extensions are built using vanilla JS. While this is certainly feasible, it is often cumbersome and inefficient when developing more complex extensions with a rich UI.

## Available Scripts

In the root project directory, you can run:

### `make build`

Prepares the app build for upload to chrome://extensions/ and the Google Chrome Webstore \
It correctly bundles your project and optimizes the build for use as a Chrome Extension. \

This command creates two things:

1.  A `./dist` directory that contains the files for `chrome://extensions/` -- use this folder to load the unpacked extension
2.  A file called latestBuild.zip, this .zip can be uploaded to the Developer Console when submitting your extension to the Chrome Web Store

#### Known Limitations

- Does not currently handle [Options](https://developer.chrome.com/docs/extensions/mv3/options/) or [Content Scripts](https://developer.chrome.com/docs/extensions/mv3/content_scripts/). For most use cases the options.html page from Chrome is unecessary as you can build an options menu into your popup directly. In order to enable content scripts and the options page, I recommend using `react-app-rewired` to replace the standard single entry point with three entry points for the popup, options, and content scripts.
