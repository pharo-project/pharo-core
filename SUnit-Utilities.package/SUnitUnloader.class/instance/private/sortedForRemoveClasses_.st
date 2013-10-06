sortedForRemoveClasses: classesToRemove
	| removePlan remainingClasses |
	removePlan := OrderedCollection new.
	remainingClasses := classesToRemove as: OrderedCollection.

	[ remainingClasses isEmpty ]
		whileFalse: [ 
			| nextToRemove |
			nextToRemove := remainingClasses
				detect: [ :each | 
					| dependents |
					"get the classes that depend on me"
					dependents := each allSubclasses.	
					"I can be removed only if nobody else depends on me."
					(remainingClasses includesAny: dependents) not ].
			removePlan addLast: nextToRemove.
			remainingClasses remove: nextToRemove ].

	^ removePlan