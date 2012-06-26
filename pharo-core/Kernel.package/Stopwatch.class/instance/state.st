squeak protocol
state

	^ state ifNil: [ state := #suspended ]
