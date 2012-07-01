instance creation
method: aMethod selector: aSymbol protocol: prot class: aClass requestor: requestor

	| instance |
	instance := self method: aMethod selector: aSymbol protocol: prot class: aClass.
	instance itemRequestor: requestor.
	^instance