testGoOpenSmalltalkSyntaxTutorial
	| displayedText expected |
	ProfStef go.
	
	displayedText := ProfStef default lessonView text.
	expected := SmalltalkSyntaxTutorial new welcome lesson.
 	self assert: displayedText equals: expected.