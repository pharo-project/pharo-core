allChangeSets
	"A list of all change sets bearing the method."
	
	| changeSets |
	changeSets := ChangeSet 
		allChangeSetsWithClass: class
		selector: selector.
	^ changeSets isEmpty
		ifFalse: [ 
			String streamContents: [ :aStream | 
				changeSets size = 1 
					ifTrue: [ aStream nextPutAll: 'only in change set ' ]
					ifFalse: [ aStream nextPutAll: 'in change sets: ' ].
				changeSets do: [ :aChangeSet | 
					aStream
						nextPutAll: aChangeSet name;
						nextPutAll: ' ' ] ] ]
		ifTrue: [ 'in no change set' ]