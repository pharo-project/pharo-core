iconFor: index
	| class |

	class := self elementAt: index.

	((class includesBehavior: (Smalltalk globals at: #TestCase ifAbsent: [ false ])) 
		and: [ class isAbstract not ])
		ifTrue: [
			class hasPassedTest ifTrue: [ ^ Smalltalk ui icons testGreenIcon ].
			class hasFailedTest ifTrue: [ ^ Smalltalk ui icons testYellowIcon ].
			class hasErrorTest ifTrue: [ ^ Smalltalk ui icons testRedIcon ]. 
			
			^ Smalltalk ui icons testNotRunIcon ].
		
	class organization classComment 
		ifEmpty: [ ^ Smalltalk ui icons uncommentedClassIcon ].

	((class includesBehavior: (Smalltalk globals at: #TestCase ifAbsent: [ false ])) 
		and: [ class isAbstract not ])
		ifTrue: [ 
			class hasPassedTest ifTrue: [ ^ Smalltalk ui icons testGreenIcon ].
			class hasFailedTest ifTrue: [ ^ Smalltalk ui icons testYellowIcon ].
			class hasErrorTest ifTrue: [ ^ Smalltalk ui icons testRedIcon ]. 
			
			^ Smalltalk ui icons testNotRunIcon ].
		
	class organization classComment 
		ifEmpty: [ ^ Smalltalk ui icons uncommentedClassIcon ].

	^ class systemIcon