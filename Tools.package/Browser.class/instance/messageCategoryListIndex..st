message category list
messageCategoryListIndex: anInteger
	"Set the selected message category to be the one indexed by anInteger."

	messageCategoryListIndex := anInteger.
	messageListIndex := 0.
	self changed: #messageCategorySelectionChanged.
	self changed: #messageCategoryListIndex. "update my selection"
	self changed: #messageList.
	self editSelection: (anInteger > 0
		ifTrue: [#newMessage]
		ifFalse: [self classListIndex > 0
			ifTrue: [	#editClass]
			ifFalse: [#newClass]]).
	contents := nil.
	self contentsChanged.
	self changed: #relabel.