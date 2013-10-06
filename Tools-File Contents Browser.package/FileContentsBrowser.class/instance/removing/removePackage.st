removePackage
	systemCategoryListIndex = 0 ifTrue: [^ self].
	self okToChange ifFalse: [^ self].
	(self confirm: 'Are you sure you want to
remove this package 
and all its classes?') ifFalse:[^self].
	(systemOrganizer listAtCategoryNamed: self selectedSystemCategoryName) do:[:el|
		systemOrganizer removeElement: el].
	self packages removeKey: self selectedPackage packageName.
	systemOrganizer removeProtocol: self selectedSystemCategoryName.
	self systemCategoryListIndex: 0.
	self changed: #systemCategoryList