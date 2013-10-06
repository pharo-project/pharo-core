copyToClipboard

	Clipboard clipboardText: (String streamContents: [ :s| 
		self debugger interruptedContext shortDebugStackOn: s ]).