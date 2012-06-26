instance creation
method: aMethod selector: aSymbol class: aClass

	| instance |
	instance := self item: aMethod kind: self methodKind.
	instance itemSelector: aSymbol.
	instance itemClass: aClass.
	^instance