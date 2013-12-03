change: bool forRemote: remote
	| selectedItem group |
	
	selectedItem := packages selectedItem.
	selectedItem ifNil: [ ^ self ].
	
	group := selectedItem content repositoryGroup.
	
	bool
		ifTrue: [ group addRepository: remote remote ]
		ifFalse: [ group removeRepository: remote remote ]