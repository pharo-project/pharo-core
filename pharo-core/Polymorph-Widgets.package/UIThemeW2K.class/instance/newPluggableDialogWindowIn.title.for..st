morph creation
newPluggableDialogWindowIn: aThemedMorph title: title for: contentMorph
	"Answer a new pluggable dialog panel with the given content."

	|answer|
	answer := PluggableDialogWindow new
		setWindowColor: self backgroundColor;
		title: title;
		contentMorph: contentMorph.
	contentMorph ifNotNil: [answer model: nil].
	answer color: self backgroundColor.
	^answer