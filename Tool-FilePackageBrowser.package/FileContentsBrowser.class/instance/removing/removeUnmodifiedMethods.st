removeUnmodifiedMethods
	| theClass cat |
	self okToChange ifFalse:[^self].
	theClass := self selectedClassOrMetaClass.
	theClass isNil ifTrue:[^self].
	cat := self selectedMessageCategoryName.
	cat isNil ifTrue:[^self].
	Cursor wait showWhile:[
		theClass removeUnmodifiedMethods: (theClass organization listAtCategoryNamed: cat).
	].
	self messageListIndex: 0.
	self changed: #messageList.