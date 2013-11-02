Object subclass: #CharacterScanner
	instanceVariableNames: 'destX lastIndex xTable map destY stopConditions text textStyle alignment leftMargin rightMargin font line runStopIndex spaceCount spaceWidth emphasisCode kern indentationLevel wantsColumnBreaks pendingKernX'
	classVariableNames: 'ColumnBreakStopConditions CompositionStopConditions DefaultStopConditions MeasuringStopConditions PaddedSpaceCondition'
	poolDictionaries: 'TextConstants'
	category: 'Text-Scanning'