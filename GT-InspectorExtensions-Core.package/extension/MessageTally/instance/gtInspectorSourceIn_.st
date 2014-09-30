gtInspectorSourceIn: composite
	<gtInspectorPresentationOrder: 50>
	^ self method ifNotNil: [
		self method gtInspectorSourceIn: composite]