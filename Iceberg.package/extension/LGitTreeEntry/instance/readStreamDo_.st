readStreamDo: aBlock
	aBlock value: (ReadStream on: self object contents asString)
