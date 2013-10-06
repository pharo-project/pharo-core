newContentMorph
	"Answer a new content morph."

	self iconMorph: self newIconMorph.
	self textMorph: self newTextMorph.
	self confirmationTextMorph: self newConfirmationTextMorph.
	self textMorph wrapFlag: false.
	self textEditorMorph: self newTextEditorMorph.
	self confirmationTextEditorMorph: self newTextEditorMorph.
	^self newGroupboxForAll: {
		self newRow: {self iconMorph. self textMorph}.
		self textEditorMorph.
		self confirmationTextMorph.
		self confirmationTextEditorMorph.
		self newRow: {self showPasswordButton. self buildInvalidPasswordLabel}}