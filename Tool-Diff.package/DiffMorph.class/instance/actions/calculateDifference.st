calculateDifference
	"Calculate the difference of the src and dst."

	self difference: ((TextDiffBuilder
		from: self sourceTextModel getString to: self destTextModel getString)
			buildPatchSequence)