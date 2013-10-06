testNestingContainers
	| newSlice newSlice2 newClass newTrait newClass2 |
	
	newSlice:= RGFactory current createSliceNamed: #Root.
	newSlice2:= RGFactory current createSliceNamed: #Child.
	newSlice2 environment: newSlice.
	
	newSlice addClassNamed: #OrderedCollection.
	newClass:= newSlice classNamed: #OrderedCollection.
	newSlice addTraitNamed: #TSortable.
	newTrait:= newSlice traitNamed: #TSortable.
	newSlice2 addClassNamed: #SortedCollection.
	newClass2:= newSlice classNamed: #SortedCollection.
	
	self assert: (newSlice classes size = 2).
	self assert: (newSlice2 classes size = 1).
	self assert: (newSlice2 environment = newSlice).
	self assert: (newSlice2 rootEnvironment = newSlice environment)