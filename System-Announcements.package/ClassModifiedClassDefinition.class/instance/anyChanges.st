testing
anyChanges
	self flag: 'We should get rid of this please. normally if you send a changed event, is because something changed, so this is nonsense'.
	^ self event isSuperclassModified
		| self event areInstVarsModified
			| self event areClassVarsModified
				| self event areSharedPoolsModified
					| self event isTraitCompositionModified.