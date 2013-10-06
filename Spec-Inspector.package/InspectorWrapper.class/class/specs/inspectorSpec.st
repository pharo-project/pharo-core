inspectorSpec
	<spec>
	
	^ SpecLayout composed
	
		newColumn: [ :c | 
			c 
				add: #toolbar height: 18;
				add: #inspector withSpec: #inspectorSpec ];
		yourself