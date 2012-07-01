accessing
selected: aBoolean
	selected = aBoolean
		ifTrue: [^ self].
	aBoolean
		ifTrue: [container selectedMorphList add: self]
		ifFalse: [selected 
			ifNotNil: [container selectedMorphList remove: self]].
	selected := aBoolean.
