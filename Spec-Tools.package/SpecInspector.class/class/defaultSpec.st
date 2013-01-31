spec
defaultSpec
	<spec>
	
	^ SpecLayout composed
		add: #description origin: 0@0 corner: 1@0 offsetOrigin: 0@0 offsetCorner: 0@50;
		add: #list origin: 0@0 corner: 1@1 offsetOrigin: 0@54 offsetCorner: 0@(-79);
		add: #text origin: 0@1 corner: 1@1 offsetOrigin: 0@(-75) offsetCorner: 0@0;
		yourself