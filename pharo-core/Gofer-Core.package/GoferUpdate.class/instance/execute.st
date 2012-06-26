running
execute
	self model goferHasVersions
		ifTrue: [ self model load ].
	self gofer cleanup