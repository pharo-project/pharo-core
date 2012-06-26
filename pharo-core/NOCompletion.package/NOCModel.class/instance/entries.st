accessing
entries
	| ent more |
	entries ifNotEmpty: [^expand not & (entries size > 3) ifTrue: [entries first: 3] ifFalse: [entries ]].
	ent := (narrowString notEmpty and: [narrowString first isUppercase]) 
					ifTrue: [ctable entriesMatching: narrowString] 
					ifFalse: [includeSelectors 
										ifTrue: [table entriesMatching: narrowString]
										ifFalse: [ent := super entries]].
	ent := ent asOrderedCollection.
	ent size > 7 ifTrue: [ent := ent first: 7. ].
	 ent addAll: (self nextModel entries reject: [:e | ent anySatisfy: [:ea | ea contents = e contents]]).
	entries := ent.
	^ expand not & (ent size > 3) ifTrue: [ent first: 3] ifFalse: [ent]