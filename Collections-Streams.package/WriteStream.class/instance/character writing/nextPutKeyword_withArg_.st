nextPutKeyword: keyword withArg: argValue
	"Emit a keyword/value pair in the alternate syntax"

	self nextPutAll: (keyword copyWithout: $:);
		nextPut: $(;
		store: argValue;
		nextPut: $)