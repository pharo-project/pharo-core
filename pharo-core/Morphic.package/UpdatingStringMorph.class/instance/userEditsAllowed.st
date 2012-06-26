editing
userEditsAllowed
	"Answer whether user-edits are allowed to this field"

	^ putSelector notNil or: [self hasProperty: #okToTextEdit]