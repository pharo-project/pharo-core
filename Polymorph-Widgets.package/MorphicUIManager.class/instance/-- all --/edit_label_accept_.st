edit: aText label: labelString accept: anAction
	"Open an editor on the given string/text"
	
	| window pane |
	window := (SystemWindow labelled: labelString) model: self.
	pane := PluggableTextMorph 
					on: (ValueHolder new)
					text: #contents 
					accept: #contents:
					readSelection: nil 
					menu: #codePaneMenu:shifted:.	
	pane font: StandardFonts codeFont.
	pane acceptAction: anAction.
	pane setText: aText.
	window 
		addMorph: pane frame: (0@0 corner: 1@1);
        	openInWorld.
	^window
		