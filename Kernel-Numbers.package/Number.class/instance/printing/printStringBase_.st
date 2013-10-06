printStringBase: base
	^ String streamContents:
		[:strm | self printOn: strm base: base]