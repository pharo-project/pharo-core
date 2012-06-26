splitjoin
joinUsing: joiner last: last 
	"#(1 2 3 4) joinUsing: ', ' last: 'and'. => '1, 2, 3 and 4"
	^ last join: (Array
				with: (joiner join: self allButLast)
				with: self last)