as yet unclassified
intoWorld: aWorld
	aWorld ifNil:[^self].
	super intoWorld: aWorld.
	intoWorldCount := intoWorldCount + 1.
