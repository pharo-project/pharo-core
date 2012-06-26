instance creation
on: aCollection store: aStore path: aPath
	^ (self on: aCollection)
		setStore: aStore path: aPath;
		yourself