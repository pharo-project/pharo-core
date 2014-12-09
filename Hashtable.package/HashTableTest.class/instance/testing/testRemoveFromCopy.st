testRemoveFromCopy
	| original copy |
	original := HashTable new.
	($a to: $z) do: [ :each |
		original at: each put: each ].
	copy := original copy.
	copy removeKey: $b.
	self assert: (original at: $b) = $b