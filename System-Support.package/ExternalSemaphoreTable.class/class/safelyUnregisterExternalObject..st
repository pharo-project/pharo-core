accessing
safelyUnregisterExternalObject: anObject
	"Unregister the given object in the external objects array. Do nothing if it isn't registered.
	JMM change to return if we clear the element, since it should only appear once in the array"

	| objects |
	anObject ifNil: [^ self].
	objects := self unprotectedExternalObjects.
	1 to: objects size do: [:i |
		(objects at: i) == anObject ifTrue: 
		[objects at: i put: nil.
		^self]].
