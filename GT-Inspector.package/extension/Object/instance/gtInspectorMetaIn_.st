gtInspectorMetaIn: composite
	"This presentation offers the methods of the class of the current object"
	<gtInspectorPresentationOrder: 1000>
	^ composite custom: (GTSimpleMethodsBrowser new startOn: self) 