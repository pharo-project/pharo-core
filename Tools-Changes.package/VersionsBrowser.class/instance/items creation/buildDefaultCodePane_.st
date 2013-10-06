buildDefaultCodePane: editString
	| morph |
	morph := (PluggableTextMorph
					on: self
					text: #contents
					accept: nil
					readSelection: #contentsSelection
					menu: #codePaneMenu:shifted:)
					font: StandardFonts codeFont;
					hResizing: #spaceFill;
					vResizing: #spaceFill;
					styled: true;
					classOrMetaClass: classOfMethod;
					color: Color white;
					enabled: false;
					yourself.	
	editString
		ifNotNil: [ 
			morph editString: editString.
			morph hasUnacceptedEdits: true ].
	^ morph
