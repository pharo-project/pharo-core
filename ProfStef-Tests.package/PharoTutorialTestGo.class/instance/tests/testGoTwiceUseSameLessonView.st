testGoTwiceUseSameLessonView
	| firstLessonView |
	PharoTutorial go.
	firstLessonView := PharoTutorial default lessonView.
	PharoTutorial goOn: PharoSyntaxTutorial.
	self assert: (firstLessonView ==  PharoTutorial default lessonView).