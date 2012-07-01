accessing
issueSummary: aString

	issueSummary := aString.
	issueSummary := self usableIssueSummary.
	self changed: #issueSummary.
	self changed: #okUnabled.
