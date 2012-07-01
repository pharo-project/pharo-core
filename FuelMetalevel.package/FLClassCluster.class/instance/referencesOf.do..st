analyzing
referencesOf: aClass do: aBlock

	super referencesOf: aClass do: aBlock.

	aBlock value: aClass classSide.
	aBlock value: aClass superclass.
	aBlock value: aClass basicClassPool.
	aBlock value: aClass basicSharedPools. 
	aBlock value: aClass basicCategory.
	aBlock value: aClass name.
	aBlock value: aClass format.	
	aBlock value: aClass basicEnvironment.
	aBlock value: aClass basicSubclasses.
	
	Class class instSize + 1 to: aClass class instSize 
		do: [ :index | aBlock value: (aClass instVarAt: index) ]