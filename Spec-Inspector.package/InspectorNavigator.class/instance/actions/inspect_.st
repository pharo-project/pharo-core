inspect: anObject
	| oldInspectorType |
	oldInspectorType := self inspectorType.
	self inspector: anObject inspector.
	self inspectorType: oldInspectorType.
