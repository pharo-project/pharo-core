public query
defaultSystemConverter

	SystemConverterClass ifNil: [SystemConverterClass := self currentPlatform class systemConverterClass].
	^ SystemConverterClass new.
