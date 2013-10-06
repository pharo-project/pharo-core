checkDuplicateClass: cls
	cls isMeta 
		ifTrue: [ ^ self ].
	(Smalltalk includesKey: cls name)
		ifFalse: [ ^ self].
	((Smalltalk at: cls name) == cls)
		ifFalse: [ cls becomeForward: (Smalltalk at: cls name)].