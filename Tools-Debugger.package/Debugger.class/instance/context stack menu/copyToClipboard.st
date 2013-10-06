copyToClipboard
	Clipboard clipboardText: (String streamContents: [ :s| 
		self interruptedContext shortDebugStackOn: s ]).