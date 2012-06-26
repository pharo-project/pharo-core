tests
testDo
	| contents |
	self contents: #(1 2 3).
	contents := Array streamContents:
		[:out |
		stream do: [:ea | out nextPut: ea]].
	self assert: contents = #(1 2 3)