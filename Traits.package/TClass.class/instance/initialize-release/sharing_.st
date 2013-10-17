sharing: poolString 
	"Set up sharedPools. Answer whether recompilation is advisable."
	| oldPools |
	oldPools := self sharedPools.
	self sharedPools: OrderedCollection new.
	(poolString subStrings: ' ') do: 
		[:poolName | 
		self sharedPools add: (self environment at: poolName asSymbol ifAbsent:[
			(self confirm: 'The pool dictionary ', poolName,' does not exist.',
						'\Do you want it automatically created?' withCRs)
				ifTrue:[self environment at: poolName asSymbol put: Dictionary new]
				ifFalse:[^self error: poolName,' does not exist']])].
	self sharedPools isEmpty ifTrue: [self sharedPools: nil].
	oldPools do: [:pool |
				| found |
				found := self sharedPools anySatisfy: [:p | p == pool].
				found ifFalse: [^ true "A pool got deleted"]].
	^ false