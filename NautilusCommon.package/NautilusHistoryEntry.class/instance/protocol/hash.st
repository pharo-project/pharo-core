hash
	| hash |
	hash := selectedPackage hash.
	{ selectedCategory . selectedMethod . selectedClass . selectedGroup } do: [ :iv |
		hash := hash bitXor: iv hash ].
	^ hash