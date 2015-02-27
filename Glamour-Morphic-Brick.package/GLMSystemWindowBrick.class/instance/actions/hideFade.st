hideFade
	(self brickRoot hasSubbrick: self fadeBrick)
		ifFalse: [ ^ self ].
	
	self fadeInAnimation ifNotNil: #terminate.
	fadeInAnimation := GLMAnimation new
		linear;
		duration: 150;
		from: self fadeBrick color alpha;
		to: 0;
		onCompleted: [
			(self brickRoot hasSubbrick: self fadeBrick)
				ifTrue: [ self brickRoot removeBrick: self fadeBrick ] ];
		animation: [ :b :v | b changedWith: [ b color: (b color alpha: v) ] ];
		animate: self fadeBrick