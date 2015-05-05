mergeFrom: aStartSpan to: aEndSpan
	aStartSpan = aEndSpan 
		ifFalse: [ aStartSpan mergeUpTo: aEndSpan ].
	
	