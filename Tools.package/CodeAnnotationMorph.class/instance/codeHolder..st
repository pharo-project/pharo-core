accessing
codeHolder: aCodeHolder
	codeHolder := aCodeHolder.
	aCodeHolder ifNotNil: [aCodeHolder addDependent: self]