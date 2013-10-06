testDNU
	| error |
	
	[ 1 aMessageNotUnderstoodBySmallInteger ]
		on: Error
		do: [ :err| error := err ].
	
	self assert: error message selector = #aMessageNotUnderstoodBySmallInteger.