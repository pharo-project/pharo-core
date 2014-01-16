dropInAPackage: aCollection into: receiver 

	aCollection do:[:aClass |
		self showGroups
			ifTrue: [
				receiver addClasses: { aClass }.
				ActiveHand shiftPressed
					ifFalse: [ 
						self selectedGroup removeClass: aClass.
						self updateClassView ]]
			ifFalse: [
				receiver addClass: aClass theNonMetaClass.
				ActiveHand shiftPressed
					ifTrue: [ 
						self selectedClass: nil.
						self updateClassView ]
					ifFalse:[
						self selectedPackage: receiver.
						self selectedClass: aClass.
						self updateBothView ]]]