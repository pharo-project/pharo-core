testEncodeForHTTP

	self assert: 'aa aa �� aa aa' encodeForHTTP = 'aa%20aa%20%C3%A9%C3%A9%20aa%20aa'