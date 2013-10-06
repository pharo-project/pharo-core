inspectorSpec
	<spec>
	
	^ SpecLayout composed
		newColumn: [ :c | 
			c 
				add: #toolbar height: 24;
				add: #inspector withSpec: #inspectorSpec ];
		yourself