gtInspectorVariableValuePairs
	"This is a helper method that returns a collection of 
		variable_name -> value
	for the current object.
	Subclasses can override it to specialize what appears in the variables presentation"
	| bindings |
	bindings := self class allInstVarNames asSet
					collect: [ :iv | iv -> (self instVarNamed: iv) ].
	1 to: (self basicSize min: 42) do: [ :index | 
		bindings add: (index asTwoCharacterString -> (self basicAt: index)) ].
	^ bindings