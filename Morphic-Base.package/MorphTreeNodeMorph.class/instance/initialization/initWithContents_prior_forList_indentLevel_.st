initWithContents: anObject prior: priorMorph forList: hostList indentLevel: newLevel 
	container := hostList.
	
	self cellInset: (container resizerWidth @ 0).
	complexContents := anObject.
	anObject addDependent: self.	
	isExpanded := anObject isExpanded.
	nextSibling := firstChild := nil.
	priorMorph ifNotNil: [priorMorph nextSibling: self].
	indentLevel := newLevel.
	self setBalloonText: anObject helpText.
	self initRow.
	anObject selected ifTrue: [ self selectedWithoutNotifyingComplexContents: true ]