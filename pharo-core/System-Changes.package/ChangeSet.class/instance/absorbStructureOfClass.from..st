moving changes
absorbStructureOfClass: aClass from: otherChangeSet
	"Absorb into the receiver all the structure and superclass info in the other change set.  Used to write conversion methods."

	| sup next |
	otherChangeSet structures ifNil: [^ self].
	(otherChangeSet structures includesKey: aClass name) ifFalse: [^ self].
	structures ifNil:
		[structures := Dictionary new.
		superclasses := Dictionary new].
	sup := aClass name.
	[(structures includesKey: sup) 
		ifTrue: ["use what is here" true]
		ifFalse: [self flag: #noteToDan.  "sw 1/30/2001 13:57 emergency workaround -- a case arose where the otherChangeSet's structures did not have the key, and it gummed up the works."
				(otherChangeSet structures includesKey: sup) ifTrue:
					[structures at: sup put: (otherChangeSet structures at: sup)].
				next := otherChangeSet superclasses at: sup.
				superclasses at: sup put: next.
				(sup := next) = 'nil']
	] whileFalse.


