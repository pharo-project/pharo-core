doubleClick
	self model selectedClass
		ifNil: [ ^ self ]
		ifNotNil: [:class |
			self model showGroups
				ifTrue: [ self model model class openOnClass: class onGroup: self model selectedGroup ]
				ifFalse: [ self model model class openOnClass: class ]]