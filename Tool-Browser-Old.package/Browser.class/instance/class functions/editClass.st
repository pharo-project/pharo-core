editClass
	"Retrieve the description of the class definition."

	classListIndex = 0 ifTrue: [^ self].
	self okToChange ifFalse: [^ self].
	self messageCategoryListIndex: 0.
	self editSelection: #editClass.
	self changed: #contents.
	self changed: #classCommentText.
