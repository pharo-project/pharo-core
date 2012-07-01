accessing
label

	| s |
	s := ''.
	self allMorphsDo: [:m | (m isKindOf: StringMorph) ifTrue: [s := m contents]].
	^ s