openFromRubric: aMorph withResult: anObject
	| string |
	string := anObject printString.
	self withString: string from: aMorph.
	self width: self width + inspectButton width.
	textMorph
		on: $i command
		do: [ anObject inspect ].
	inspectButton addUpAction: [ anObject inspect ].
	self openInWorld