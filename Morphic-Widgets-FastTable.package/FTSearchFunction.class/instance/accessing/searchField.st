searchField	
	^ searchField ifNil: [ searchField := self createSearchFieldMorph ]