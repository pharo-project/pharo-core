Object subclass: #RubCharacterScanner
	instanceVariableNames: 'destX lastIndex destY stopConditions text textStyle alignment leftMargin rightMargin font line runStopIndex spaceCount spaceWidth emphasisCode kern indentationLevel baselineY firstDestX pendingKernX'
	classVariableNames: 'DefaultStopConditions NilCondition PaddedSpaceCondition SpaceCondition'
	poolDictionaries: 'TextConstants'
	category: 'Rubric-TextScanning'