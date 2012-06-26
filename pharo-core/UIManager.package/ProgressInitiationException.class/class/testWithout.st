examples and tests
testWithout

	"test the progress code WITHOUT special handling"

	^[self testInnermost]
		on: ZeroDivide
		do: [ :ex | ex resume]

