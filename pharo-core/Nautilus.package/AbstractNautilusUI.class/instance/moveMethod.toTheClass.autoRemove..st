private
moveMethod: aMethod toTheClass: aClass autoRemove: autoRemove
	
	| newMethod shouldBeInstall |
	aMethod realClass = aClass ifTrue: [ ^ self ].
	shouldBeInstall := aClass methodDict
						at: aMethod selector
						ifPresent: [:sel | 
							" here I have to fork to release the drag & drop "
							[ (self openDialogWouldYouInstall: sel into: aClass)
								ifTrue: [ | originClass oldCategory |
									oldCategory := aMethod category.
									originClass := aMethod realClass.
									newMethod := aClass compile: aMethod sourceCode classified: oldCategory.
									self selectedMethod: nil.
									
									originClass removeSelector: aMethod selector.
									autoRemove
										ifTrue: [	( originClass methodsInProtocol:oldCategory )
												ifEmpty: [ originClass removeCategory: oldCategory ]]]] fork]
						ifAbsent: [ 
							 | originClass oldCategory |
							oldCategory := aMethod category.
							originClass := aMethod realClass.
							newMethod := aClass compile: aMethod sourceCode classified: oldCategory.
							self selectedMethod: nil.
							originClass removeSelector: aMethod selector.
							autoRemove
								ifTrue: [
									( originClass methodsInProtocol: oldCategory )
										ifEmpty: [ originClass removeCategory: oldCategory ]]]