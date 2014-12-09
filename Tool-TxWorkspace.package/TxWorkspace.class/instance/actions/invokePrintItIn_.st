invokePrintItIn: editorMorph 
	| editor result |
	editor := editorMorph controller.

	editor selection isEmpty ifTrue: [  
		editor moveToLineStart; extendSelectionToLineEnd. 
	].

	editor selection isEmpty ifFalse: [ 
		result := ' ' , (Compiler evaluate: editor selection asString) printString.
		editor collapseSelection.
		editorMorph insert: result
		
	 ].