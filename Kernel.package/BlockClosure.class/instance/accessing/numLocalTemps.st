numLocalTemps
	"Answer the number of local temporaries for the receiver"
	^BlockLocalTempCounter
		tempCountForBlockAt: startpc - 4 "size of push closure copy bytecode"
		in: self method