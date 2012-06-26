protected
setDefaultAnalysis

	analysisFactory := [:anObject | 
		(FLAnalysis 
			newWith: self firstInMapperChain 
			root: anObject)
			run;
			yourself ]