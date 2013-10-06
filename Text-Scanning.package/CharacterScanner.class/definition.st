Object subclass: #CharacterScanner
	instanceVariableNames: 'destX lastIndex xTable destY stopConditions text textStyle alignment leftMargin rightMargin font line runStopIndex spaceCount spaceWidth emphasisCode kern indentationLevel wantsColumnBreaks pendingKernX'
	classVariableNames: 'DefaultStopConditions NilCondition PaddedSpaceCondition SpaceCondition'
	poolDictionaries: 'TextConstants'
	category: 'Text-Scanning'