removeUnmodifiedCategories
	| theClass |
	self okToChange ifFalse: [^self].
	theClass := self selectedClass.
	theClass isNil ifTrue: [^self].
	Cursor wait showWhile:
		[theClass removeUnmodifiedMethods: theClass selectors.
		theClass metaClass removeUnmodifiedMethods: theClass metaClass selectors].
	self messageCategoryListIndex: 0.
	self changed: #messageCategoryList.