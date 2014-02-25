testGoOpenSmalltalkSyntaxTutorial
	| displayedText expected |
	PharoTutorial go.
	
	displayedText := PharoTutorial default lessonView text.
	expected := PharoSyntaxTutorial new welcome lesson.
 	self assert: displayedText equals: expected.