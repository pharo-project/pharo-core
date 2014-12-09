testDictonary
	| step test ord |
	step := 100.
	test := Dictionary new.

	[ test size >= 100000 ] whileFalse: [ 
		ord := OrderedCollection new: step.
		step timesRepeat: [
			test at: (ord add: Object new) put: nil ].
		Transcript show: test size; tab.
		Transcript show: [ 
			10 timesRepeat: [
				ord do: [ :each |
					test at: each ] ] ]
			timeToRun.
		Transcript cr ].