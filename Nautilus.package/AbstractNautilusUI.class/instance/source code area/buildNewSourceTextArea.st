buildNewSourceTextArea

	sourceTextArea := self textMorphClass
				on: self
				text: #sourceCodeFrom:
				accept: #compileSource:notifying:
				readSelection: #contentsSelectionFrom:
				menu: #sourceCodeMenu:shifted:.
				
	sourceTextArea
		askBeforeDiscardingEdits: true;
		vResizing: #spaceFill;
		hResizing: #spaceFill; 
		font: StandardFonts codeFont;
		spaceFillWeight: 3;
		on: #keyStroke send: #keyStroke:fromSourceCodeMorph: to: self.
		
	self setSourceCodeShorcutsTo: sourceTextArea.
	^ sourceTextArea 