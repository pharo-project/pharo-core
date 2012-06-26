context stack menu
copyToClipboard
	| stream |
	stream := String new writeStream. 
	self interruptedContext errorReportOn: stream.
	Clipboard clipboardText: stream contents asString.
