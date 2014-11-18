associationAt: aKey ifPresent: aBlock
	"squeak does not have associationAt:ifPresent:"
	^ aBlock cull: (dictionary associationAt: aKey ifAbsent: [^ nil])