updating
update: aSymbol

	aSymbol == #hierarchicalList ifTrue: [
		^self changed: #getList
	].
	super update: aSymbol