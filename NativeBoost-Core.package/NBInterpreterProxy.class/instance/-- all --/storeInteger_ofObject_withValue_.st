storeInteger: index ofObject: obj withValue: integerValue
	"Note: Integer value must fit in SmallInt , otherwise function will fail primitive"

	^ self simpleCall
