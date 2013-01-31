context stack menu
copyToClipboard
	Clipboard clipboardText: (String streamContents: [ :s| 
		self interruptedContext shortDebugStackOn: s ]).