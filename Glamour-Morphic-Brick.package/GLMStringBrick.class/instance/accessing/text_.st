text: aString
	|repaint|
	
	repaint := text size > 0.	
	self privateSetText: aString.

	repaint ifTrue: [ self brickOwner doLayout. self root changed ]