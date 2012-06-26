private
accept
	| name cl |
	nameField accept.
	(name := nameField getText) isEmptyOrNil ifFalse: [
			cl := selectedClass contents.
			cl ifNil: [ cl := ComposableModel ].
			description contents addInstVarNamed: name kindOfComposablaeModel: cl.
			description contentsChanged ]