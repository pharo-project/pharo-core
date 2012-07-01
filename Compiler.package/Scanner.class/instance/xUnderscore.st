multi-character scans
xUnderscore
	^ self allowUnderscoreAsAssignment
		ifTrue: [self step.
			tokenType := #leftArrow.
			token := #':=']
		ifFalse: [self xIllegal] 