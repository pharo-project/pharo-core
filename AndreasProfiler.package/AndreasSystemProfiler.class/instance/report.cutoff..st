reporting
report: strm cutoff: threshold 
	tallyRoot isNil ifTrue: [ strm nextPutAll: 'The profiler has not been run'. ^ self ].
	
	tallyRoot tally = 0 
		ifTrue: [ strm nextPutAll: ' - no tallies obtained' ] 
		ifFalse: [
			strm nextPutAll: 'Reporting - ', totalTally asStringWithCommas,' tallies, ',
							 totalTime asStringWithCommas, ' msec.'; cr; cr.
			tallyRoot fullPrintOn: strm tallyExact: false orThreshold: threshold time: totalTime.
	].

	totalTime isZero ifFalse: [
		self reportGCStatsOn: strm.
		self reportProcessStatsOn: strm.
	].