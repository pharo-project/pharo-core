accessing
usableIssueSummary
	| s allowed |
	s := ''.
	allowed := ($A to: $Z)
				, ($a to: $z)
				, ($0 to: $9)
				, (Array with: $-).
	self issueSummary
		do: [:c | ({Character space. Character tab. $_} includes: c)
				ifTrue: [s := s , '-']
				ifFalse: [(allowed includes: c)
						ifTrue: [s := s , c asString]]].
	^ s