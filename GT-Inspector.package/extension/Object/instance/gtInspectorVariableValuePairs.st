gtInspectorVariableValuePairs
	"This is a helper method that returns a collection of 
		variable_name -> value
	for the current object.
	Subclasses can override it to specialize what appears in the variables presentation"
	| bindings |
	bindings := self class allSlots asSet
					collect: [ :slot | slot name -> (slot read: self) ].
	1 to: (self basicSize min: 42) do: [ :index | 
		bindings add: (index asTwoCharacterString -> (self basicAt: index)) ].
	^ bindings