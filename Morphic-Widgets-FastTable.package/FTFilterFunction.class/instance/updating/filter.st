filter
	pattern ifNil: [ ^ self ].
	pattern
		ifEmpty: [ table dataSource: initialDataSource readyToBeDisplayed.  ]
		ifNotEmpty: [ table dataSource: (initialDataSource newDataSourceMatching: (self patternFromString: pattern)) ].
	table refresh.
	self isExplicite
		ifTrue: [ self resizeWidget ]