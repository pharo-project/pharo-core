updateRemoteSelectionFrom: aPackage
	| reposotories |
	
	aPackage 
		ifNil: [ reposotories := #() ]
		ifNotNil: [ reposotories := aPackage repositoryGroup repositories ].
	
	remotes roots do: [ :node |
		self silentWhile: [ 
			node selected: (reposotories includes: node content remote) ] ]