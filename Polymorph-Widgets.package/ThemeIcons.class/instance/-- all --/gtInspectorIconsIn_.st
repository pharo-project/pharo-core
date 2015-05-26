gtInspectorIconsIn: composite
	<gtInspectorPresentationOrder: 40>
	composite list 
		title: 'Icons';
		display: [ 
			self iconSelectors asSortedCollection 
				collect: [ :each | each -> (self perform: each) ] ];
		icon: [ :each | each value ];
		format: [ :each | each key ]