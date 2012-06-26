init & update
updateListsAndCodeIn: aWindow
	| aMethod |
	aMethod := classOfMethod compiledMethodAt: selectorOfMethod ifAbsent: [^ false].
	aMethod == currentCompiledMethod
		ifFalse:
			["Do not attempt to formulate if there is no source pointer.
			It probably means it has been recompiled, but the source hasn't been written
			(as during a display of the 'save text simply?' confirmation)."
			aMethod last ~= 0 ifTrue: [self reformulateList]].
	^ true
