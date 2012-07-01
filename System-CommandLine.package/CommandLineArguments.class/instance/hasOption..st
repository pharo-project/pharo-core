accessing
hasOption: aString
	| option |
	option := (aString size = 1
					ifTrue: [ '-']
					ifFalse: [ '--']), aString.
	^ self arguments includes: option 