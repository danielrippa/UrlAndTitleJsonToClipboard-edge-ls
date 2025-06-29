function copy-text-to-clipboard text => navigator.clipboard.write-text text

chrome.action.on-clicked.add-listener (tab) !->

  data = url: tab.url, title: tab.title

  text-to-copy = JSON.stringify data

  chrome.scripting.execute-script do

    target: tab-id: tab.id
    func: copy-text-to-clipboard
    args: [text-to-copy]