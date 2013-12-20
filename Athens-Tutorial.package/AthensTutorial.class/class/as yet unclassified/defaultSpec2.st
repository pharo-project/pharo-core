defaultSpec2 
	<spec:#default>
	
	| x1 x2 |
	
	x1 := 0.5 + (0.5/3).
	x2 := x1 + (0.5/3).
	
	^ SpecLayout composed
		add: #viewMorph origin: 0@0 corner: 0.5@1;
		add: #textPane origin: 0.5@0 corner: 1@1 offsetOrigin: 4@0 offsetCorner: 0@(50 negated);
		add: #doitButton origin: 0.5@1 corner: x1@1 offsetOrigin: 0@(46 negated) offsetCorner: 0@0;
		add: #prevButton origin: x1@1 corner: x2@1 offsetOrigin: 0@(46 negated) offsetCorner: 0@0;
		add: #nextButton origin: x2@1 corner: 1@1 offsetOrigin: 0@(46 negated) offsetCorner: 0@0;
		
		
		yourself