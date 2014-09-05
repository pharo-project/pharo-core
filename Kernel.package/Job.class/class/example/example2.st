example2
	"Job example2"
	[[ :job| 
		job max: 10.
		1 to: 10 do: [ :i|
			job title: 'Fib ', i asString.
			"do some hard work"
			40 benchFib.
			"update the job progress"
			job currentValue: i ]
	] asJob run] fork.