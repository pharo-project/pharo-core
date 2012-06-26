private
trigger: event

	self isBroadcasting ifTrue: [event trigger: eventSource]

"	| caughtExceptions |
	caughtExceptions := OrderedCollection new.
	self isBroadcasting ifTrue: [
		[(eventSource actionForEvent: event eventSelector) valueWithArguments: (Array with: event)] on: Exception do: [:exc | caughtExceptions add: exc]].
	caughtExceptions do: [:exc | exc resignalAs: exc class new]"