testing
testDo

	| sum |
	sum := 0.
	shortRunArray do: [:each| sum := sum + each ].
	self assert: 83 equals: sum.
