openLabel: aString 
	| window |
	window := (SystemWindow labelled: aString) model: self.
	window addMorph: (PluggableTextMorph on: self text: nil accept: nil
			readSelection: nil menu: #codePaneMenu:shifted:)
		frame: (0@0 corner: 1@1).
	^ window openInWorld