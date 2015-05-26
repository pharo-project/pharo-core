open	
	shoutMorph  := PluggableTextMorph 
		on: self 
		text: nil
		accept: nil
		readSelection: nil 
		menu: #shoutMorphFillMenu:.
	shoutMorph
		setText: ''.
	window  := SystemWindow labelled: 'PrStef lesson'.
	window addMorph: shoutMorph  frame: (0@0 corner: 1@1).
	window openInWorld.