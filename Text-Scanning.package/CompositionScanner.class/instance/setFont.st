stop conditions
setFont
	super setFont.
	stopConditions == DefaultStopConditions ifTrue: [ stopConditions := stopConditions copy ].
	stopConditions 
		at: Space asciiValue + 1
		put: #space.
	wantsColumnBreaks == true ifTrue: 
		[ stopConditions 
			at: TextComposer characterForColumnBreak asciiValue + 1
			put: #columnBreak ]