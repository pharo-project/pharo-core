filter
	pattern ifNil: [ ^ self ].
	table dataSource: (initialDataSource newDataSourceMatching: (self patternFromString: pattern)).
	table refresh.
	self isExplicite
		ifTrue: [ self resizeWidget ]