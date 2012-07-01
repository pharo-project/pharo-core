instance creation
method: aMethod selector: aSymbol class: aClass requestor: requestor

	| instance |
	instance := self method: aMethod selector: aSymbol class: aClass.
	instance itemRequestor: requestor.
	^instance