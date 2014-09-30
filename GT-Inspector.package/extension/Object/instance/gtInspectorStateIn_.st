gtInspectorStateIn: composite
	"This is the most basic presentation showing the state of the object"
	<gtInspectorPresentationOrder: 10>
	^ composite custom: (GTObjectVariablesBrowser new startOn: self)