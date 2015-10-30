classIconFor: aClass
	((aClass includesBehavior: (Smalltalk globals at: #TestCase ifAbsent: [ false ])) and: [ aClass isAbstract not ])
		ifTrue: [ | icon button |
			icon :=  Smalltalk ui icons iconNamed: #testNotRunIcon.

			aClass hasPassedTest ifTrue: [ icon :=  Smalltalk ui icons iconNamed: #testGreenIcon ].
			aClass hasFailedTest ifTrue: [ icon :=  Smalltalk ui icons iconNamed: #testYellowIcon ].
			aClass hasErrorTest ifTrue: [ icon :=  Smalltalk ui icons iconNamed: #testRedIcon ].
					
			button := IconicButton new 
						target: self;
						actionSelector: #runTestsOfClass:notifying:;
						arguments: { aClass. true };
						labelGraphic: icon ;
						color: Color transparent;
						extent: 12 @ 12;
						helpText: 'Run the tests';
						borderWidth: 0.
			^ button ]
		ifFalse: [
			(aClass organization classComment isEmpty and: [ Nautilus emptyCommentWarning ])
				ifTrue: [| button |
					button := IconicButton new 
								target: self;
								actionSelector: #openCommentEditor:;
								arguments: { aClass };
								labelGraphic: (Smalltalk ui icons iconNamed: #uncommentedClassIcon) ;
								color: Color transparent;
								extent: 12 @ 12;
								helpText:'Edit the comment';
								borderWidth: 0.
					^ button ]].

	^ aClass systemIcon