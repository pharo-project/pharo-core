as yet unclassified
noteNewSelection: x

	currentSelection := x.
	self changed: #getCurrentSelection.
	currentSelection ifNil: [^self].
	currentSelection sendSettingMessageTo: self.
