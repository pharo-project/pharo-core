build items
buildTextMorph

	^ (PluggableTextMorph
			on: self 
			text: #text 
			accept: nil)
			disable;
			hResizing: #spaceFill;
			yourself