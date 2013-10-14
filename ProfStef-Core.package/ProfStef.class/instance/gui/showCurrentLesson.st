showCurrentLesson
	| progressInfo lesson position size |
	lesson := self player currentLesson.
	progressInfo := '(', self tutorialPositionString, '/', self tutorialSizeString, ')'. 
	^ self lessonView 
		showLesson: lesson 
		withTitle: lesson title, ' ', progressInfo.