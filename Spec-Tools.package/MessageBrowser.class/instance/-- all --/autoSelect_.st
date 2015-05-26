autoSelect: aSelector

	textModel readSelectionBlock: [:text | self searchedString: aSelector asString in: text ]