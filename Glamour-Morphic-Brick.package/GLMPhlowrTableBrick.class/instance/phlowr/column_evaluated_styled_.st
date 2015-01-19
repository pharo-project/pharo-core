column: aStringOrBlockOrSymbol evaluated: aBlockOrSymbol styled: aBlockOrSymbolForStyle

	self addColumn: (GLMPhlowrTableColumn new 
		title: aStringOrBlockOrSymbol;
		computation: aBlockOrSymbol;
		style: aBlockOrSymbolForStyle)