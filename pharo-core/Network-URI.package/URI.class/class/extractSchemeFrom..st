private
extractSchemeFrom: aString
	| colonIndex slashIndex |
	colonIndex := aString indexOf: $: .
	^colonIndex > 0
		ifTrue: [
			slashIndex := aString indexOf: $/ .
			(slashIndex = 0
				or: [colonIndex < slashIndex])
				ifTrue: [aString copyFrom: 1 to: colonIndex-1]
				ifFalse: [nil]]
		ifFalse: [nil]