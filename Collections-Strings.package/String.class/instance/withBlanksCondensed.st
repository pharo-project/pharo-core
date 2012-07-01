converting
withBlanksCondensed
	"Return a copy of the receiver with leading/trailing blanks removed
	 and consecutive white spaces condensed."

	| trimmed |
	trimmed := self trimBoth.
	^String streamContents: [:stream | | lastBlank |
		lastBlank := false.
		trimmed do: [:c | (c isSeparator and: [lastBlank]) ifFalse: [stream nextPut: c].
			lastBlank := c isSeparator]].

	" ' abc  d   ' withBlanksCondensed"
