tests - sorting
testSorted
	| result tmp |
	result := self unsortedCollection sorted.
	tmp := result at: 1.
	result do:
		[:each | self assert: each>=tmp. tmp:= each. ].