accessing
modelWakeUpIn: aWindow
	| newText |
	self updateListsAndCodeIn: aWindow.
	newText := self contentsIsString
		ifTrue: [newText := self selection]
		ifFalse: ["keep it short to reduce time to compute it"
			self selectionPrintString ].
	newText = contents ifFalse:
		[contents := newText.
		self changed: #contents]