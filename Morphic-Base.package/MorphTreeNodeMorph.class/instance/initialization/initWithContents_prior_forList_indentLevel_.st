initWithContents: anObject prior: priorMorph forList: hostList indentLevel: newLevel
	"Make sure that we will be removed from our model dependents when deleted."

	container := hostList.
	self cellInset: container resizerWidth @ 0.
	complexContents := anObject.
	anObject addDependent: self.
	self
		onAnnouncement: MorphDeleted
		do: [ :ann | 
			anObject removeDependent: ann morph.
			ann morph announcer unsubscribe: anObject ].
	isExpanded := anObject isExpanded.
	nextSibling := firstChild := nil.
	priorMorph ifNotNil: [ priorMorph nextSibling: self ].
	indentLevel := newLevel.
	self setBalloonText: anObject helpText.
	self initRow.
	anObject selected
		ifTrue: [ self selectedWithoutNotifyingComplexContents: true ]