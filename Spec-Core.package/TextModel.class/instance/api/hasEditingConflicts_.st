hasEditingConflicts: aBoolean
	<api:#boolean getter: #hasEditingConflicts>
	"Set if the text zone has editing conflicts"

	^ self changed: #hasEditingConflicts: with: { aBoolean }