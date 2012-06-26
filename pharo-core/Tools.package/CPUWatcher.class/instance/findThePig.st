porcine capture
findThePig
	"tally has been updated. Look at it to see if there is a bad process.
	This runs at a very high priority, so make it fast"
	| countAndProcess | 
	countAndProcess := tally sortedCounts first.
	(countAndProcess key / tally size > self threshold) ifTrue: [ | proc |
		proc := countAndProcess value.
		proc == Processor backgroundProcess ifTrue: [ ^self ].	"idle process? OK"
		self catchThePig: proc
	].
