accessing
usableIssueNumber
	| s allowed |
	s := ''.
	allowed := ($0 to: $9).
	self issueNumber
		do: [:c | (allowed includes: c) ifTrue: [s := s , c asString]].
	^ s