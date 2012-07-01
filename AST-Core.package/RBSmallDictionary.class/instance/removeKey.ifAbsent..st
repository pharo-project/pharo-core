removing
removeKey: aKey ifAbsent: aBlock
	"Remove aKey from the receiver, evaluate aBlock if the element is missing."

	| index value |
	index := self findIndexFor: aKey.
	index = 0 ifTrue: [ ^ aBlock value ].
	value := values at: index.
	index to: tally - 1 do: [ :i |
		keys at: i put: (keys at: i + 1).
		values at: i put: (values at: i + 1) ].
	keys at: tally put: nil.
	values at: tally put: nil.
	tally := tally - 1.
	^ value