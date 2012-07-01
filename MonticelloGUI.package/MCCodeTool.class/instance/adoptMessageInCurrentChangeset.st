menus
adoptMessageInCurrentChangeset
	"Add the receiver's method to the current change set if not already there"

	self selectedClassOrMetaClass ifNotNil: [ :cl |
		self selectedMessageName ifNotNil: [ :sel |
			ChangeSet current adoptSelector: sel forClass: cl.
			self changed: #annotations ]]
