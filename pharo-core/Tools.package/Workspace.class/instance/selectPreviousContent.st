history
selectPreviousContent

	| trimmedContents newContentOrNil |
	trimmedContents := self lastContents collect: [:c | c copyFrom: 1 to: (c size min: 20)].
	newContentOrNil := UIManager default chooseFrom: trimmedContents values: self lastContents.
	
	"newContentOrNil may be nil if the user cancel"
	newContentOrNil ifNil: [ newContentOrNil := '' ].
	
	self setContent: newContentOrNil