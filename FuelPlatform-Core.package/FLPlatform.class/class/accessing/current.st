current
	^ Current ifNil: [ Current := self detectPlatform ]