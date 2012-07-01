user interface
morphicFileContentsPane

	^(PluggableTextMorph 
		on: self 
		text: #contents 
		accept: #put:
		readSelection: nil 
		menu: #fileContentsMenu:shifted:) 
