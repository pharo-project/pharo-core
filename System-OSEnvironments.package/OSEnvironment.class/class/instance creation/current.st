current
	^ Current ifNil: [ Current := self environmentFor: OSPlatform current ]