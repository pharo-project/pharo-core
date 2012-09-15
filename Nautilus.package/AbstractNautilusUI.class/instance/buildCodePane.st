items creation
buildCodePane
		
	"The following method fills up sourceTextArea variable"
	self buildNewSourceTextArea.
	
	multipleMethodsEditor := MultipleMethodsEditor new.

	multipleMethodsEditor 
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		addEditor: sourceTextArea.
			
	^ multipleMethodsEditor