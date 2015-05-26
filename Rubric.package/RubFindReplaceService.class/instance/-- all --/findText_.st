findText: aStringOrText
	findText := aStringOrText asText.
	self findPolicyChanged.
	self announcer announce: RubFindTextChanged new.
	^ true