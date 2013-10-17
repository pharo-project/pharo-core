at: key

	| hash |
	(keys at: (hash := key largeIdentityHash + 1)) ifNotNil: [ :keyList | 
		1 to: (tallies at: hash) do: [ :index |
			(keyList at: index) == key ifTrue: [
				^(values at: hash) at: index ] ] ].
	self errorKeyNotFound: key