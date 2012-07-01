converting
correctAgainstDictionary: wordDict continuedFrom: oldCollection
	"Like correctAgainst:continuedFrom:.  Use when you want to correct against a dictionary."

	^ wordDict isNil
		ifTrue: [ self correctAgainstEnumerator: nil
					continuedFrom: oldCollection ]
		ifFalse: [ self correctAgainstEnumerator: [ :action | wordDict keysDo: action ]
					continuedFrom: oldCollection ]