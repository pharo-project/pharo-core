invokeInspectItIn: editorMorph 
	| editor |
	editor := editorMorph controller.

	editor selection isEmpty ifTrue: [  
		editor moveToLineStart; extendSelectionToLineEnd. 
	].

	editor selection isEmpty ifFalse: [ 
		(Compiler evaluate: editor selection asString) inspect.	
	 ].