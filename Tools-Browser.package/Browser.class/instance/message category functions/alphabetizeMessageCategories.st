alphabetizeMessageCategories
	classListIndex = 0 ifTrue: [^ false].
	self okToChange ifFalse: [^ false].
	self classOrMetaClassOrganizer sortCategories.
	self clearUserEditFlag.
	self editClass.
	self classListIndex: classListIndex.
	^ true