menus behavior
renameClass

	self okToChange ifFalse: [ ^ self ].

	self basicRenameClass: self selectedClass theNonMetaClass.

	self changed: #sourceCodeFrom:.