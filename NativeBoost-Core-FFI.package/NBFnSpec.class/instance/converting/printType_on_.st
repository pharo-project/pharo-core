printType: typeAndArity on: str

	str nextPutAll: typeAndArity first.
	typeAndArity second timesRepeat: [ str nextPut: $* ].
