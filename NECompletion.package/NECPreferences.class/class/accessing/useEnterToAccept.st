useEnterToAccept
	^ useEnterToAccept ifNil: [ useEnterToAccept := self defaultUseEnterToAccept ]