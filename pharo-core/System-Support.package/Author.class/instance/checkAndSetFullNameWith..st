accessing
checkAndSetFullNameWith: aString 
	| s allowed |
	aString ifNil: [^self].
	s := ''.
	allowed := ($A to: $Z)
				, ($a to: $z)
				, ($0 to: $9).
	aString
		do: [:c | (allowed includes: c)
				ifTrue: [s := s , c asString]].
	self fullName: s