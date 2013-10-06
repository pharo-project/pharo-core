processNameList
	"since processList is a WeakArray, we have to strengthen the result"

	| pw tally |
	pw := Smalltalk globals at: #CPUWatcher ifAbsent: [  ].
	tally := pw ifNotNil: [ pw current ifNotNil: [ pw current tally ] ].
	^ (processList asOrderedCollection copyWithout: nil)
		collect: [ :each | 
			| percent |
			percent := tally
				ifNotNil: [ (((tally occurrencesOf: each) * 100.0 / tally size roundTo: 1) asString padLeftTo: 2) , '% ' ]
				ifNil: [ '' ].
			percent , (self prettyNameForProcess: each) ]