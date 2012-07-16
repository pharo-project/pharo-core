acessing
slice
	^ slice ifNil: [ slice := self loadSlice ].