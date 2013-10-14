testGoTwiceShowLessonViewIfNotVisible
	| firstLessonView |
	ProfStef go.
	firstLessonView := ProfStef default lessonView.
	firstLessonView close.
	ProfStef goOn: SmalltalkSyntaxTutorial.
	self assert:  (World systemWindows includes:  firstLessonView window).