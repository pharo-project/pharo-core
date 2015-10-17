gtInspectorBrowserIn: composite
	<gtInspectorPresentationOrder: 40>  
	^ composite tabulator with: [ :t |
		t title: 'Live'.
		t column: #default.
		t transmit 
			to: #default; 
			transformed: [:x | self entity ]; 
			andShow: [:a | a custom: self copy ] ]