initWithContents: anObject prior: priorMorph forList: hostList indentLevel: newLevel 
	container := hostList.
	
	self cellInset: (container resizerWidth @ 0).
	complexContents := anObject.
	anObject addDependent: self.	
	isExpanded := false.
	nextSibling := firstChild := nil.
	priorMorph ifNotNil: [priorMorph nextSibling: self].
	indentLevel := newLevel.
	self setBalloonText: anObject helpText.
	self initRow
	