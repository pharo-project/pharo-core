instance creation
method: aMethod protocol: prot class: aClass

	| instance |
	instance := self method: aMethod class: aClass.
	instance itemProtocol: prot.
	^instance