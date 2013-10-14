testGoTwiceUseSameLessonView
	| firstLessonView |
	ProfStef go.
	firstLessonView := ProfStef default lessonView.
	ProfStef goOn: SmalltalkSyntaxTutorial.
	self assert: (firstLessonView ==  ProfStef default lessonView).