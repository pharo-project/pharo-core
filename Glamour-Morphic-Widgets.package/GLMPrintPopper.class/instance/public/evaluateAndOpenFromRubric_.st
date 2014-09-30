evaluateAndOpenFromRubric: aMorph
	| string result |
	result := aMorph textArea editor evaluateSelectionAndDo: [ :x | x ].
	string := result asString.
	self withString: string from: aMorph.
	self width: self width + inspectButton width.
	textMorph
		on: $i command
		do: [ result inspect ].
	inspectButton addUpAction: [ result inspect ].
	self openInWorld