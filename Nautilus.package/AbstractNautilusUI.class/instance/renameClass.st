menus behavior
renameClass

	self okToChange ifFalse: [ ^ self ].

	self dispatchRenameClass: self selectedClass theNonMetaClass.

	self changed: #sourceCodeFrom:.