benchmarks
benchDiffsFrom: before to: afterwards 
	"Given two outputs of BitBlt>>benchmark show the relative improvements."
	| old new log oldLine newLine oldVal newVal improvement |
	log := String new writeStream.
	old := before readStream.
	new := afterwards readStream.
	[ old atEnd or: [ new atEnd ] ] whileFalse: 
		[ oldLine := old nextLine.
		newLine := new nextLine.
		(oldLine includes: Character tab) 
			ifTrue: 
				[ oldLine := oldLine readStream.
				newLine := newLine readStream.
				Transcript
					cr; 
					show: (oldLine upTo: Character tab);
					tab.
				log
					cr;
					nextPutAll: (newLine upTo: Character tab);
					tab.
				
				[ oldLine skipSeparators.
				newLine skipSeparators.
				oldLine atEnd ] whileFalse: 
					[ oldVal := Integer readFrom: oldLine.
					newVal := Integer readFrom: newLine.
					improvement := oldVal asFloat / newVal asFloat roundTo: 0.01.
					Transcript
						show: improvement printString;
						tab;
						tab.
					log
						print: improvement;
						tab;
						tab ] ]
			ifFalse: 
				[ Transcript
					cr;
					show: oldLine.
				log
					cr;
					nextPutAll: oldLine ] ].
	^ log contents