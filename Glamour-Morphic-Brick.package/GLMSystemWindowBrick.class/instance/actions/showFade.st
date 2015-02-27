showFade

	(self brickRoot hasSubbrick: self fadeBrick)
		ifFalse: [ self brickRoot addBrick: self fadeBrick after: self offcanvasBrick ].
		
	self fadeInAnimation ifNotNil: #terminate.
	fadeInAnimation := GLMAnimation new
		linear;
		duration: 150;
		from: self fadeBrick color alpha;
		to: 0.5;
		onCompleted: [ ];
		animation: [ :b :v | b changedWith: [ b color: (b color alpha: v) ] ];
		animate: self fadeBrick