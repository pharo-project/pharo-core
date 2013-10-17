initialize	"Integer initialize"
	"Ensure we have the right compact class index"

	"LPI has been a compact class forever - just ensure basic correctness"
	(LargePositiveInteger indexIfCompact = 5) ifFalse:[
		(Smalltalk compactClassesArray at: 5)
			ifNil:[LargePositiveInteger becomeCompactSimplyAt: 5]
			ifNotNil:[self error: 'Unexpected compact class setup']].

	(LargeNegativeInteger indexIfCompact = 4) ifFalse:[
		(Smalltalk compactClassesArray at: 4)
			ifNil:[LargeNegativeInteger becomeCompactSimplyAt: 4]
			ifNotNil:[self error: 'Unexpected compact class setup']].
