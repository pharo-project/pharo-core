geometry
stepAction
	| newContents c |
	newContents := self contents.
	
	wait = 0 ifFalse: [ ^ wait := wait - 1 ].
	leftToRight
		ifTrue: [ 
			index := index -1.
			index = initialIndex 
				ifTrue: [ c := '' ]
				ifFalse: [ c := initialContents at: (index - initialIndex) ].
			newContents :=  c asString, newContents.
			self privateSetContents: newContents.
			index < initialIndex ifTrue: [
				wait := 5.
				index := index +1.
				leftToRight := false.
				^ self]]
		ifFalse: [
			index := index +1.
			newContents := newContents allButFirst.
			self privateSetContents: newContents.
			index > initialContents size ifTrue: [
												leftToRight := true.
												wait := 3 ]]