duringTestCompileSilently: code classified: aCategory
	<flExtensionOf: #ClassDescription>
	^ self 
		duringTestCompileSilently: code
		storeSource: true
		classified: aCategory