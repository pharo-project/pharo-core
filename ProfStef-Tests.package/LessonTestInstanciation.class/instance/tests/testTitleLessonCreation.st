testTitleLessonCreation
	| firstLesson secondLesson |
	firstLesson := Lesson title: 'First lesson' lesson: 'Smalltalk rules!'.
	secondLesson := Lesson title: 'Second lesson' lesson: 'ProfStef is cool'.
	
	self assert: firstLesson title equals: 'First lesson'.
	self assert: firstLesson lesson equals: 'Smalltalk rules!'.
	
	self assert: secondLesson title equals: 'Second lesson'.
	self assert: secondLesson lesson equals: 'ProfStef is cool'.