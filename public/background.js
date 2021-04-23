/*global chrome*/
chrome.runtime.onInstalled.addListener(() => {
  console.log('Chrome extension successfully installed!');
  return;
});
