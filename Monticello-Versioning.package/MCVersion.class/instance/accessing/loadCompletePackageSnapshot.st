loadCompletePackageSnapshot
	| definitions |
	definitions := package snapshot definitions asOrderedCollection.
	
	self dependencies 
		do: [ :each| definitions addAll: each package snapshot definitions ]
		displayingProgress: [ :item| 'Loading dependencies from: ', item package name ].
	
	^ MCSnapshot fromDefinitions: definitions
	
	