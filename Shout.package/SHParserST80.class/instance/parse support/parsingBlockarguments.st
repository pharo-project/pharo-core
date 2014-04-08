parsingBlockarguments
	^ ranges isEmpty or:[|last| last:= ranges last.
		last type = #blockPatternArg]