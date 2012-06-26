geometry
computeBounds
	| box |
	(submorphs isNil or:[submorphs isEmpty]) ifTrue:[^self].
	box := nil.
	submorphs do:[:m| | subBounds |
		subBounds := self transform localBoundsToGlobal: m bounds.
		box 
			ifNil:[box := subBounds]
			ifNotNil:[box := box quickMerge: subBounds].
	].
	box ifNil:[box := 0@0 corner: 20@20].
	fullBounds := bounds := box