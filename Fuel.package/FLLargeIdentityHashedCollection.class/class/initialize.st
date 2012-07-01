initialize-release
initialize

	| rng |
	rng := Random seed: 664399324.
	PermutationMap := (0 to: 4095) asArray.
	PermutationMap size to: 2 by: -1 do: [ :i | 
		PermutationMap swap: i with: (rng nextInt: i) ].
	"TODO: Inlined SequenceableCollection>>shuffleBy: to avoid Pharo 1.1 incompatibility."

