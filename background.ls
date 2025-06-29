function copy-text-to-clipboard text => navigator.clipboard.write-text text

chrome.action.on-clicked.add-listener (tab) !->

  text-to-copy = JSON.stringify url: tab.url, title: tab.title 

  chrome.scripting.execute-script do

    target: tab-id: tab.id
    func: copy-text-to-clipboard
    args: [text-to-copy]
