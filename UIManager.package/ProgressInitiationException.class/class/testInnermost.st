examples and tests
testInnermost

	"test the progress code WITHOUT special handling"

	^'Now here''s some Real Progress'
		displayProgressFrom: 0 to: 10
		during: [ :bar |
			1 to: 10 do: [ :x | 
				bar current: x. (Delay forMilliseconds: 500) wait.
				x = 5 ifTrue: [1/0].	"just to make life interesting"
			].
			'done'
		].

