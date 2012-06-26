initialization
initWithContents: anObject prior: priorMorph forList: hostList indentLevel: newLevel

	container := hostList.
	complexContents := anObject.
	self initWithContents: anObject asString font: StandardFonts listFont emphasis: nil.
	indentLevel := 0.
	isExpanded := false.
 	nextSibling := firstChild := nil.
	priorMorph ifNotNil: [
		priorMorph nextSibling: self.
	].
	indentLevel := newLevel.
	icon := anObject icon.
	self extent: self minWidth @ self minHeight