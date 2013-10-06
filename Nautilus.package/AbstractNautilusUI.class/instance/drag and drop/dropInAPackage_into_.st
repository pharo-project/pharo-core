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
				aClass theNonMetaClass category: receiver name.
				ActiveHand shiftPressed
					ifTrue: [ 
						self selectedClass: nil.
						self updateClassView ]
					ifFalse:[
						self selectedPackage: receiver.
						self selectedClass: aClass.
						self updateBothView ]]]