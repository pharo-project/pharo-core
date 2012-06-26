icon
methodIconFor: aMethod

	| result button |
	button := nil.
	MethodsIconsCache
		at: aMethod
		ifPresent: [:icon | 
			icon isArray ifTrue: [ ^ self rebuildUpAndDownArrowIconFrom: icon].
			icon class == IconicButtonStateHolder ifFalse: [ ^ icon ].
			^ icon asIconTargetting: self model ].
	
	result :=  aMethod containsHalt
			ifTrue: [ self iconClass iconNamed: #breakpoint ]
			ifFalse: [
				aMethod isFromTrait
				ifTrue: [ 
					button := IconicButton new 
							target: [ aMethod retrieveTraitIComeFrom browse ];
							actionSelector: #value;
							labelGraphic: (self iconClass iconNamed: #trait) ;
							color: Color transparent;
							extent: 12 @ 12;
							helpText: 'Browse the trait';
							borderWidth: 0 ]
				ifFalse:[
					aMethod containsFlag
						ifTrue: [ self iconClass iconNamed: #flag ]
						ifFalse: [
							aMethod isTestMethod
								ifTrue: [| icon |
									icon :=  self iconClass iconNamed: #testNotRun.

									aMethod hasPassedTest
										ifTrue: [	icon :=  self iconClass iconNamed: #testGreen ].

									aMethod hasFailedTest
										ifTrue: [	icon :=  self iconClass iconNamed: #testYellow ].

									aMethod hasErrorTest
										ifTrue: [	icon :=  self iconClass iconNamed: #testRed ].
									button := IconicButton new 
												target: self model;
												actionSelector: #runTestForAMethod:notifying:;
												arguments: { aMethod. true };
												labelGraphic: icon ;
												color: Color transparent;
												helpText: 'Run the test';
												extent: 12 @ 12;
												borderWidth: 0 ]
								ifFalse: [					
									aMethod correspondingTestMethod
										ifNotNil: [:testMethod || icon |
											icon :=  self iconClass iconNamed: #testNotRun.

											testMethod hasPassedTest
												ifTrue: [	icon :=  self iconClass iconNamed: #testGreen ].

											testMethod hasFailedTest
												ifTrue: [	icon :=  self iconClass iconNamed: #testYellow ].

											testMethod hasErrorTest
												ifTrue: [	icon :=  self iconClass iconNamed: #testRed ].
											button := IconicButton new 
														target: self model;
														actionSelector: #runTestForAMethod:notifying:;
														arguments: { aMethod. true};
														labelGraphic: icon ;
														color: Color transparent;
														extent: 12 @ 12;
														helpText: 'Run the test';
														borderWidth: 0 ]
										ifNil: [ | isOverriden |
											isOverriden := aMethod isOverriden.
											aMethod isOverride
												ifTrue: [ 
													isOverriden
														ifTrue: [ 
															result := self buildUpAndDownArrowIcon: aMethod.
															MethodsIconsCache at: aMethod put: {(IconicButtonStateHolder forNautilus: result value first). (IconicButtonStateHolder forNautilus: result value second)}.
															^ result key ]
														ifFalse:[ button := IconicButton new 
																		target: self model;
																		actionSelector: #arrowUp:;
																		arguments: { aMethod };
																		labelGraphic: (self iconClass iconNamed: #arrowUp);
																		color: Color transparent;
																		helpText: 'Browse overriden message';
																		extent: 12 @ 12;
																		borderWidth: 0 ]]
												ifFalse: [
													isOverriden
														ifTrue: [ button := IconicButton new 
																		target: self model;
																		actionSelector: #arrowDown:;
																		arguments: { aMethod };
																		labelGraphic: (self iconClass iconNamed: #arrowDown);
																		color: Color transparent;
																		helpText: 'Browse overriding messages';
																		extent: 12 @ 12;
																		borderWidth: 0 ]
														ifFalse: [ 
															aMethod isAbstract
															ifTrue: [ self iconClass iconNamed: #abstract ]
															ifFalse: [ self iconClass iconNamed: #blank]]]]]]]].
		button 
			ifNil: [ button := result ]
			ifNotNil: [ result := IconicButtonStateHolder forNautilus: button ].
		MethodsIconsCache at: aMethod put: result.
		^ button