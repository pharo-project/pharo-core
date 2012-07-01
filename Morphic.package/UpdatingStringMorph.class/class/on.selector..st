instance creation
on: targetObject selector: aSymbol

	^ self new
		getSelector: aSymbol;
		target: targetObject

