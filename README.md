# React Chrome Extension (Manifest v3) Boilerplate

This repo is forked from ``casendler/react-chrome-extension-mv3``.

Starting point for creating a Chrome Browser Extension popup and service-worker based background script. 

Instead of using a Makefile like casendler, I have updated the ``package.json`` build command to avoid inline scripting.
In this template, you only have to run ``npm run build`` and then you can import the ``build`` folder as a chrome extension.

Traditionally browser extensions are built using vanilla JS. While this is certainly feasible, it is often cumbersome and inefficient when developing more complex extensions with a rich UI.

#### Use temaplate

You can use this tempalte for your own project.

Please run ``npm install`` in the root directory to install the necessary packages.


#### Known Limitations

- Does not currently handle [Options](https://developer.chrome.com/docs/extensions/mv3/options/) or [Content Scripts](https://developer.chrome.com/docs/extensions/mv3/content_scripts/). For most use cases the options.html page from Chrome is unecessary as you can build an options menu into your popup directly. In order to enable content scripts and the options page, I recommend using `react-app-rewired` to replace the standard single entry point with three entry points for the popup, options, and content scripts.
