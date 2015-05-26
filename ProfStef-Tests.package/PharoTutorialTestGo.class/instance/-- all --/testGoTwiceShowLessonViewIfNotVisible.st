testGoTwiceShowLessonViewIfNotVisible
	| firstLessonView |
	PharoTutorial go.
	firstLessonView := PharoTutorial default lessonView.
	firstLessonView close.
	PharoTutorial goOn: PharoSyntaxTutorial.
	self assert:  (World systemWindows includes:  firstLessonView window).