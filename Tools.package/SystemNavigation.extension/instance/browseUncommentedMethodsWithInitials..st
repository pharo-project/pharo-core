*Tools-Browser
browseUncommentedMethodsWithInitials: targetInitials
	"Browse uncommented methods whose initials (in the time-stamp, as logged to disk) match the given initials.  Present them in chronological order.  CAUTION: It will take several minutes for this to complete."
	"Time millisecondsToRun: [SystemNavigation new browseUncommentedMethodsWithInitials: 'jm']"
	| methodReferences |

	methodReferences := OrderedCollection new.
	self  allBehaviorsDo:
		[:aClass | aClass selectorsAndMethodsDo: [:sel :cm |
			| timeStamp initials |
			timeStamp := cm timeStamp.
			timeStamp isEmpty ifFalse:
				[initials := timeStamp substrings first.
				initials first isDigit ifFalse:
					[((initials = targetInitials) and: [(aClass firstPrecodeCommentFor: sel) isNil])
						ifTrue:
							[methodReferences add: (self createMethodNamed: sel realParent: aClass new)]]]]].

	^ Smalltalk tools messageList
		openMessageList: methodReferences 
		name: 'Uncommented methods with initials ', targetInitials
		autoSelect: nil