testCaseOtherwiseBlockWithArgument
	self setUpForErrorsIn: 'nil caseOf: { [nil] -> [1] } otherwise: [:x` <- otherwise arg of caseOf:otherwise: has too many arguments ->` | 2 ]. ^nil '.
	self enumerateAllSelections.