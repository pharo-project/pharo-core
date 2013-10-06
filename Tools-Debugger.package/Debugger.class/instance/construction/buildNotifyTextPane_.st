buildNotifyTextPane: aDebugger

	^ (PluggableTextMorph
		on: aDebugger
		text: nil
		accept: nil
		readSelection: nil
		menu: #debugProceedMenu:) 
			styled: false; 
			yourself