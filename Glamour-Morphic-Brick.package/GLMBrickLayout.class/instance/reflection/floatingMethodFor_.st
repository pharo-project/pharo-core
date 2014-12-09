floatingMethodFor: aSymbol

	^ ('layoutFloating', (aSymbol capitalized), ':in:withArguments:') asSymbol.