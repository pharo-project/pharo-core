rules
	^ rules ifNil: [ rules := self defaultRules ]