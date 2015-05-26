settingsOn: aBuilder
	<systemsettings>
	
	(aBuilder group: #configurableFormatter)
		target: self;
		parent: #codeBrowsing;
		label: 'Pretty Printing';
		description: 'Settings related to the formatter';
		with: [
			(aBuilder setting: #cascadedMessageInsideParentheses)
				label: 'Cascaded message inside parentheses'.
			(aBuilder setting: #formatCommentWithStatements)
				label: 'Format comment with statements'.
			(aBuilder setting: #indentString)
				label: 'Indent string'.
			(aBuilder setting: #indentsForKeywords)
				label: 'Indents for keywords'.
			(aBuilder setting: #keepBlockInMessage)
				label: 'Keep block in message'.
			(aBuilder setting: #lineUpBlockBrackets)
				label: 'Line up block brackets'.
			(aBuilder setting: #methodSignatureOnMultipleLines)
				label: 'Method signature on multiple lines'.
			(aBuilder setting: #maxLineLength)
				label: 'Max line length'.
			(aBuilder setting: #oneLineMessages)
				label: 'One line messages'.
			(aBuilder setting: #multiLineMessages)
				label: 'Multi line messages'.
			(aBuilder setting: #minimumNewLinesBetweenStatements)
				label: 'Minimum new lines between statements'.
			(aBuilder setting: #newLineAfterCascade)
				label: 'New line after cascade'.
			(aBuilder setting: #newLineBeforeFirstCascade)
				label: 'New line before first cascade'.
			(aBuilder setting: #newLineBeforeFirstKeyword)
				label: 'New line before first keyword'.
			(aBuilder setting: #newLinesAfterMethodComment)
				label: 'New lines after method comment'.
			(aBuilder setting: #newLinesAfterMethodPattern)
				label: 'New lines after method pattern'.
			(aBuilder setting: #newLinesAfterTemporaries)
				label: 'New lines after temporaries'.
			(aBuilder setting: #numberOfArgumentsForMultiLine)
				label: 'Number of arguments for multi line'.
			(aBuilder setting: #periodsAsTerminators)
				label: 'Periods as terminators'.
			(aBuilder setting: #periodsAtEndOfBlock)
				label: 'Periods at end of block'.
			(aBuilder setting: #periodsAtEndOfMethod)
				label: 'Periods at end of method'.
			(aBuilder setting: #retainBlankLinesBetweenStatements)
				label: 'Retain blank lines between statements'.
			(aBuilder setting: #retainBlankLinesBeforeComments)
				label: 'Retain blank lines before comments'.
			(aBuilder setting: #stringFollowingReturn)
				label: 'String following return'.
			(aBuilder setting: #stringInsideBlocks)
				label: 'String inside blocks'.
			(aBuilder setting: #stringInsideParentheses)
				label: 'String inside parentheses'.
			(aBuilder setting: #traditionalBinaryPrecedence)
				label: 'Traditional binary precedence'.
			(aBuilder setting: #useTraditionalBinaryPrecedenceForParentheses)
				label: 'Use traditional binary precedence for parentheses' ]