testGoOnMockTutorial
	| displayedText expected |
	PharoTutorial goOn: MockTutorial.
	
	displayedText := PharoTutorial default lessonView text.
	expected := MockTutorial new firstLesson lesson.
 	self assert: displayedText equals: expected.