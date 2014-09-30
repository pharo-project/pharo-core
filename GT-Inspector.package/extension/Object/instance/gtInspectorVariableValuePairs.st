gtInspectorVariableValuePairs
	"This is a helper method that returns a collection of 
		variable_name -> value
	for the current object.
	Subclasses can override it to specialize what appears in the variables presentation"
	| bindings |
	bindings := self class allInstVarNames 
					collect: [ :iv | iv -> (self instVarNamed: iv) ].
	^ Set new
		addAll: bindings;
		yourself