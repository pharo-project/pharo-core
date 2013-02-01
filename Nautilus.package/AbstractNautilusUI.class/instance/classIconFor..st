icon
classIconFor: aClass

	ClassesIconsCache 
		at: aClass 
		ifPresent: [:icon | 
			 icon class == IconicButtonStateHolder ifFalse: [ ^ icon ].
			^ icon asIconTargetting: self ].

	((aClass includesBehavior: TestCase) and: [ aClass isAbstract not ])
		ifTrue: [ | icon button |
			icon :=  self iconClass iconNamed: #testNotRun.

			aClass hasPassedTest ifTrue: [ icon :=  self iconClass iconNamed: #testGreen ].
			aClass hasFailedTest ifTrue: [ icon :=  self iconClass iconNamed: #testYellow ].
			aClass hasErrorTest ifTrue: [ icon :=  self iconClass iconNamed: #testRed ].
					
			button := IconicButton new 
						target: self;
						actionSelector: #runTestsOfClass:notifying:;
						arguments: { aClass. true };
						labelGraphic: icon ;
						color: Color transparent;
						extent: 12 @ 12;
						helpText: 'Run the tests';
						borderWidth: 0.
			 ClassesIconsCache at: aClass put: (IconicButtonStateHolder forNautilus: button).
			^ button ]
		ifFalse: [
			aClass organization classComment isEmpty
				ifTrue: [| button |
					button := IconicButton new 
								target: self;
								actionSelector: #openCommentEditor:;
								arguments: { aClass };
								labelGraphic: (self iconClass iconNamed: #uncommentedClass) ;
								color: Color transparent;
								extent: 12 @ 12;
								helpText:'Edit the comment';
								borderWidth: 0.
					 ClassesIconsCache at: aClass put: (IconicButtonStateHolder forNautilus: button).
					^ button ]].
			
	(aClass includesBehavior: String)
		ifTrue: [ ^ ClassesIconsCache at: aClass put: (self iconClass iconNamed: #string) ].
	(aClass includesBehavior: Announcement)
		ifTrue: [ ^ ClassesIconsCache at: aClass put: (self iconClass iconNamed: #announcement) ].
	(aClass includesBehavior: Collection)
		ifTrue: [ ^ ClassesIconsCache at: aClass put: (self iconClass iconNamed: #collection) ].
	(aClass includesBehavior: Exception)
		ifTrue: [ ^ ClassesIconsCache at: aClass put: (self iconClass iconNamed: #exception) ].
	(aClass includesBehavior: Magnitude)
		ifTrue: [ ^ ClassesIconsCache at: aClass put: (self iconClass iconNamed: #magnitude) ].
	(aClass includesBehavior: Morph)
		ifTrue: [ ^ ClassesIconsCache at: aClass put: (self iconClass iconNamed: #morph) ].

	^ ClassesIconsCache at: aClass put: (self iconClass iconNamed: #blank)