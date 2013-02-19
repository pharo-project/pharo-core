private
sortedForRemovePackages: packagesToRemove
	| planToRemove remainingPackages |
	planToRemove := OrderedCollection new.
	remainingPackages := packagesToRemove as: OrderedCollection.

	[ remainingPackages isEmpty ]
		whileFalse: [ 
			| nextToRemove |
			nextToRemove := remainingPackages
				detect: [ :each | 
					| dependents |
					"get the packages that depend on me"
					dependents := (each definedClasses gather: [ :c | c allSubclasses collect: [ :s | s package ] ]) asSet.	
					"a package that depends on me shouldn't be removed after me."
					((remainingPackages copyWithout: each) includesAny: dependents) not ].
			planToRemove addLast: nextToRemove.
			remainingPackages remove: nextToRemove ].

	^ planToRemove