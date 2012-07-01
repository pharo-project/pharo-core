as yet unclassified
calculateDifference
	"Calculate the difference of the src and dst."

	self difference: ((TextDiffBuilder
		from: self oldText asString to: self newText asString)
			buildPatchSequence)