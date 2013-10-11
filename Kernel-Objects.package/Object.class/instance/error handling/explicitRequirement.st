explicitRequirement
	"If one of the superclasses can perform the selector, we execute the method of that class, otherwise, the explicit requirement error is thrown"

	| originalMethod originalSelector originalClass originalArguments errorBlock originalReceiver |
	originalClass := thisContext sender receiver class.
	originalReceiver := thisContext sender receiver.
	originalMethod := thisContext sender method.
	originalSelector := originalMethod selector.
	originalArguments := thisContext sender arguments.
	errorBlock := [ ^ self error: 'Explicitly required method' ].
	originalMethod isFromTrait
		ifFalse: errorBlock.
	originalClass superclass
		withAllSuperclassesDo: [ :superCl | 
			superCl 
				compiledMethodAt: originalSelector
				ifPresent: [ :method | 
					(method isProvided or: [ method isFromTrait not ])
						ifTrue: [ ^ method valueWithReceiver: originalReceiver arguments: originalArguments ] ]
				ifAbsent: [  ] ].
	^ errorBlock value