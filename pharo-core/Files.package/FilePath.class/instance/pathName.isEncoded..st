conversion
pathName: p isEncoded: isEncoded

	converter := LanguageEnvironment defaultFileNameConverter.
	isEncoded ifTrue: [
		squeakPathName := p convertFromWithConverter: converter.
		vmPathName := p.
	] ifFalse: [
		squeakPathName := p isOctetString ifTrue: [p asOctetString] ifFalse: [p].
		vmPathName := squeakPathName convertToWithConverter: converter.
	].
