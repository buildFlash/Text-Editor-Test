var richeditor = {};
var editor = document.getElementById("editor");

richeditor.insertText = function(text) {
    editor.innerHTML = text;
    window.webkit.messageHandlers.heightDidChange.postMessage(document.body.offsetHeight);
}

richeditor.setBold = function () {
    document.execCommand('bold');
}

richeditor.setItalics = function () {
    document.execCommand('italic');
}


editor.addEventListener("input", function() {
    window.webkit.messageHandlers.textDidChange.postMessage(editor.innerHTML);
}, false)

document.addEventListener("selectionchange", function() {
    window.webkit.messageHandlers.heightDidChange.postMessage(document.body.offsetHeight);
}, false);
