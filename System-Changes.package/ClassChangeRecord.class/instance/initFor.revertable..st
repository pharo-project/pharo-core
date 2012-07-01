initialization
initFor: className revertable: isRevertable

	changeTypes := IdentitySet new.
	methodChanges := IdentityDictionary new.
	priorName := thisName := className.