removeClass
	| class |
	classListIndex = 0 ifTrue: [^ self].
	class := self selectedClass.
	(self confirm:'Are you certain that you
want to delete the class ', class name, '?') ifFalse:[^self].
	self selectedPackage removeClass: class.
	self classListIndex: 0.
	self changed: #classList.