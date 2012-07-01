stop conditions
setFont
	super setFont.
	breakAtSpace := false.
	wantsColumnBreaks == true ifTrue: [
		stopConditions := stopConditions copy.
		stopConditions at: TextComposer characterForColumnBreak asciiValue + 1 put: #columnBreak.
	].
