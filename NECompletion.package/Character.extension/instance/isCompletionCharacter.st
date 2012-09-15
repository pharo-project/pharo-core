*NECompletion
isCompletionCharacter
	^ self = $: or: [ self isAlphaNumeric ]