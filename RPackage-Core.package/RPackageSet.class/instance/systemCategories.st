system compatibility
systemCategories
	^systemCategories ifNil: [ systemCategories := (self packages collect: #packageName) asSet asArray].
	