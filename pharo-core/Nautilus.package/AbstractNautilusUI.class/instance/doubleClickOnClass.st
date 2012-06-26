events handling
doubleClickOnClass

	self selectedClass
		ifNil: [ ^ self ]
		ifNotNil: [:class |
			self showGroups
				ifTrue: [ self model class openOnClass: class onGroup: self selectedGroup ]
				ifFalse: [ self model class openOnClass: class ]]