drag and drop
dropInAPackage: aCollection into: aPackage 

	aCollection do:[:aClass |
		aClass theNonMetaClass category: aPackage name.
		ActiveHand shiftPressed
			ifTrue: [ 
				self selectedClass: nil.
				self updateClassView ]
			ifFalse:[
				self selectedPackage: aPackage.
				self selectedClass: aClass.
				self updateBothView ]]