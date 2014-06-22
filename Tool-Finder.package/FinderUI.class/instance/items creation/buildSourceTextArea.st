buildSourceTextArea

	sourceTextArea := PluggableTextMorph
				on: self
				text: #sourceCode
				accept: #compileSource:notifying:
				readSelection: #autoSelection
				menu: #msgPaneMenu:shifted:.
				
	sourceTextArea askBeforeDiscardingEdits: true.
	sourceTextArea font: StandardFonts codeFont.
	self updateSourceCode.
	^ sourceTextArea