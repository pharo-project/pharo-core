selectedPackageWithoutChangingSelection: aSelection
	| class |
	
	self okToChange ifFalse: [ ^ self ].
	
	class := self selectedClass.
	(class notNil and: [ 
		aSelection isNil or: [ (aSelection includesClass: class) not ] ])
		ifTrue: [ self selectedClass: nil ].
	
	aSelection ifNotNil: [ 
		aSelection registerSelectionTarget: self ].
	
	self updateClassView.
	self updateCategoryAndMethodList