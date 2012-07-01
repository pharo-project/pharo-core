accessing
completeSnapshot
	"return a complete snapshot of the loaded sources in this working copy. 
	unlike snapshot this includes also the snapshots of all packages"
	
	| definitions |
	
	definitions := self snapshot definitions asOrderedCollection.
	
	self requiredPackages 
		do: [ :aPackage| definitions addAll: aPackage workingCopy completeSnapshot definitions ]
		displayingProgress: [ :item| 'Loading dependencies from: ', item name ].
	
	^ MCSnapshot fromDefinitions: definitions