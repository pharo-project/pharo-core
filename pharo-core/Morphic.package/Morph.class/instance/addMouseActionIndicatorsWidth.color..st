debug and other
addMouseActionIndicatorsWidth: anInteger color: aColor

	self deleteAnyMouseActionIndicators.

	self changed.
	self hasRolloverBorder: true.
	self setProperty: #rolloverWidth toValue: anInteger@anInteger.
	self setProperty: #rolloverColor toValue: aColor.
	self layoutChanged.
	self changed.

