printing
longPrintRelativeOn: aStream indent: tabs
	"List of all the byte codes in a method with a short description of each" 

	self isQuick ifTrue: 
		[^self longPrintOn: aStream indent: tabs].
	self isPrimitive ifTrue:
		[aStream tab: tabs. self printPrimitiveOn: aStream].
	(RelativeInstructionPrinter on: self)
		indent: tabs;
		printCode: false;
		printInstructionsOn: aStream.
