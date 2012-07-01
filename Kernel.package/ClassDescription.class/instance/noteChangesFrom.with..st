organization updating
noteChangesFrom: oldMethodDict with: changedSelectors
	"create notifications about the changes made to the method dictionary"
	self haltIf: changedSelectors isEmpty not.
	"oldMethodDict keys \ methodDict keys"
	changedSelectors do: [ :selector|
		" deal with removal / updates relative to the old method dictionary"
		oldMethodDict 
			at: selector 
			ifPresent: [:oldMethod| 
				methodDict 
					at: selector
					ifPresent: [:newMethod|	self noteMethodChanged: oldMethod to: newMethod]
					ifAbsent: [ self noteMethodRemoved: oldMethod ]]
			ifAbsent: [ self noteMethodAdded: (methodDict at: selector)]].
	