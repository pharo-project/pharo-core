drop shadows
removeDropShadow
	self hasDropShadow ifFalse:[^self].
	self changed.
	self hasDropShadow: false.
	fullBounds ifNotNil:[fullBounds := self privateFullBounds].
	self changed.