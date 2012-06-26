instance creation
method: aMethod class: aClass

	| instance |
	instance := self item: aMethod kind: self methodKind.
	instance itemClass: aClass.
	^instance