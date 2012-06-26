debug and other
deleteAnyMouseActionIndicators

	self changed.
	(self valueOfProperty: #mouseActionIndicatorMorphs ifAbsent: [#()]) do: [ :each |
		each deleteWithSiblings		"one is probably enough, but be safe"
	].
	self removeProperty: #mouseActionIndicatorMorphs.
	self hasRolloverBorder: false.
	self removeProperty: #rolloverWidth.
	self removeProperty: #rolloverColor.
	self layoutChanged.
	self changed.

