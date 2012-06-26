instance creation
newFrom: aCollection
	"Compress aCollection into a ShortRunArray"
	| lastValue lastRun runs values |
	aCollection isEmpty ifTrue:[^self runs:#() values: #()].
	runs := (WordArray new: 100) writeStream.
	values := (ShortIntegerArray new: 100) writeStream.
	lastValue := aCollection first.
	lastRun := 0.
	aCollection do:[:item|
		(item = lastValue and:[lastRun < 16r8000]) ifTrue:[
			lastRun := lastRun + 1.
		] ifFalse:[
			runs nextPut: lastRun.
			values nextPut: lastValue.
			lastRun := 1.
			lastValue := item.
		].
	].
	runs nextPut: lastRun.
	values nextPut: lastValue.
	^self runs: runs contents values: values contents