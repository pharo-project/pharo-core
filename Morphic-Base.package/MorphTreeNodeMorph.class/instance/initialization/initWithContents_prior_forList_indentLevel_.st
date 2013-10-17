initWithContents: anObject prior: priorMorph forList: hostList indentLevel: newLevel 
	container := hostList.
	
	self cellInset: (container resizerWidth @ 0).
	complexContents := anObject.
	isExpanded := false.
	nextSibling := firstChild := nil.
	priorMorph ifNotNil: [priorMorph nextSibling: self].
	indentLevel := newLevel.
	self initRow
	