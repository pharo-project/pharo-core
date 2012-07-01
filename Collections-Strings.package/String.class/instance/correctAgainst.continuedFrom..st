converting
correctAgainst: wordList continuedFrom: oldCollection
	"Like correctAgainst:.  Use when you want to correct against several lists, give nil as the first oldCollection, and nil as the last wordList."

	^ wordList isNil
		ifTrue: [ self correctAgainstEnumerator: nil
					continuedFrom: oldCollection ]
		ifFalse: [ self correctAgainstEnumerator: [ :action | wordList do: action without: nil]
					continuedFrom: oldCollection ]