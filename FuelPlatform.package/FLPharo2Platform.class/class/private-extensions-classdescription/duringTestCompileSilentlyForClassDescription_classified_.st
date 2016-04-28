duringTestCompileSilentlyForClassDescription: code classified: aCategory
	<flExtensionOf: #ClassDescription selector: #duringTestCompileSilently:classified:>
	^ self 
		duringTestCompileSilently: code
		storeSource: true
		classified: aCategory