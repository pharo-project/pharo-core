actions
hideDetail
	detailMorph ifNil: [ ^ self ].
	self removeMorph: detailMorph.
	detailMorph delete.
	detailMorph := nil.
	self changed