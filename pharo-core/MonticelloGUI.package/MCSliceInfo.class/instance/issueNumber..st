accessing
issueNumber: aString

	issueNumber := aString.
	issueNumber := self usableIssueNumber.
	self changed: #issueNumber.
	self changed: #okUnabled