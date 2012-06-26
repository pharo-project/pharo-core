do-its
printIt
	"Treat the current text selection as an expression; evaluate it. Insert the 
	description of the result of evaluation after the selection and then make 
	this description the new text selection."
	self evaluateSelectionAndDo: [:result | self afterSelectionInsertAndSelect: result printString]