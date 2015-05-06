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
		on: #keyStroke send: #keyStroke:fromSourceCodeMorph: to: self;
		warningLimit: self warningLimit.
		
	self setSourceCodeShorcutsTo: sourceTextArea.
	sourceTextAreaLimit := sourceTextArea warningLimit.
	sourceTextArea warningLimit: -1.
	^ sourceTextArea 