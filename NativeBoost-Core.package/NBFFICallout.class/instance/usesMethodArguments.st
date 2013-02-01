testing
usesMethodArguments

	^ fnSpec arguments anySatisfy: [:type | type loader usesSTStack ]