menuAllowed
	^ menuAllowed ifNil: [ menuAllowed := self defaultMenuAllowed  ]