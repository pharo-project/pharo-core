proxy testing
isIntegerValue: value
	 " return true (1) only if given integer value fits in ST smallinteger immediate oop"
	^ self simpleCall
