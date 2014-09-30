gtInspectorBrowserIn: composite
	<gtInspectorPresentationOrder: 40>  
	^ (composite wrapper with: [ :w |
		w title: 'Live'.
		w show: [:a | a custom: self copy ] ]
		) startOn: self entity