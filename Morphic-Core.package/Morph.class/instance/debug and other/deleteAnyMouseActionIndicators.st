deleteAnyMouseActionIndicators

	self changed.
	self removeProperty: #mouseActionIndicatorMorphs.
	self hasRolloverBorder: false.
	self removeProperty: #rolloverWidth.
	self removeProperty: #rolloverColor.
	self layoutChanged.
	self changed.

