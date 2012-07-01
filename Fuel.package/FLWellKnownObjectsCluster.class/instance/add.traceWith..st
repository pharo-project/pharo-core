analyzing
add: anObject traceWith: aAnalysis

	"Do nothing. THis is an optimization. As you see, anObject is not added. In the conrary, #registerIndexesOn: directly serializes all the array of WellKnownObjects. See #objects"