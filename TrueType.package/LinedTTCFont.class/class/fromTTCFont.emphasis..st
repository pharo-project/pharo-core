as yet unclassified
fromTTCFont: aTTCFont emphasis: code

	| inst |
	inst := self new.
	inst ttcDescription: aTTCFont ttcDescription.
	inst pointSize: aTTCFont pointSize.
	inst emphasis: (aTTCFont emphasis bitOr: code).
	inst lineGlyph: (aTTCFont ttcDescription at: $_).

	^ inst.
