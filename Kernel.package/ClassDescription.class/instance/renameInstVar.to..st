instance variables
renameInstVar: oldName to: newName

	(self confirm: 'WARNING: Renaming of instance variables
is subject to substitution ambiguities.
Do you still wish to attempt it?') ifFalse: [self halt].
	"...In other words, this does a dumb text search-and-replace,
	which might improperly alter, eg, a literal string.  As long as
	the oldName is unique, everything should work jes' fine. - di"

	^ self renameSilentlyInstVar: oldName to: newName