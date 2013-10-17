doesNotUnderstand: aMessage
	| v |
	^ (v := self at: aMessage selector) ifNil: [ super doesNotUnderstand: aMessage ] ifNotNil: [ v ]