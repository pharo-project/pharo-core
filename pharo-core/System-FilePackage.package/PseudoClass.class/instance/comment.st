class
comment
	| rStr |
	rStr := self organization commentRemoteStr.
	^rStr isNil
		ifTrue:[self name,' has not been commented in this file']
		ifFalse:[rStr string]