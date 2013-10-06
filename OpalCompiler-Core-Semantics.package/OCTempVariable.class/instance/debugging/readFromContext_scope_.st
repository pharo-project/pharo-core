readFromContext: aContext scope: contextScope
	"Usually the loop is useless, the first case with i = offset returns the correct result. 
	However, the loop is required for specific case as Debugger restart feature."

	| offset contextForRead |
	offset := contextScope outerOffsetTo: scope.
	offset to: 0 by: -1 do: [ :i |
		contextForRead := aContext.
		i timesRepeat: [contextForRead := contextForRead outerContext ].
		contextForRead ifNotNil: [ :ctx | ^ ctx tempAt: self indexFromIR ]
	].
	self error: 'temporary variable not found' 