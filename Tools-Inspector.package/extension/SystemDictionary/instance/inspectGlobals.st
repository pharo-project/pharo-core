inspectGlobals
	"Smalltalk globals  inspectGlobals"

	| associations aDict |
	associations := (self keys reject: [ :aKey | (self at: aKey) isKindOf: Class ]) asArray sort
		collect: [ :aKey | self associationAt: aKey ].
	aDict := IdentityDictionary new.
	associations do: [ :as | aDict add: as ].
	aDict inspectWithLabel: 'The Globals'