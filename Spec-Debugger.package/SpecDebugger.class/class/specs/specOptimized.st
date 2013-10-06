specOptimized
	<spec: #default>
	
	^ SpecLayout composed
		add: #stack origin: 0@0 corner: 1@0.25;
		add: #toolbar origin: 0@0.25 corner: 1@0.25 offsetOrigin: 0@0 offsetCorner: 0@25;
		addHSplitter;
		add: #code origin: 0@0.25 corner: 1@0.80 offsetOrigin: 0@25 offsetCorner: 0@0;
		addHSplitter;
		newRow: [ :r |
			r 
				add: #receiverInspector;
				addSplitter;
				add: #contextInspector]
		top: 0.8;
		yourself 