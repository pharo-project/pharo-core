showOffcanvas

	self offcanvasAnimation ifNotNil: #terminate.
	offcanvasAnimation := GLMAnimation new
		linear;
		duration: 150;
		from: self offcanvasBrick marginRight;
		to: self brickRoot paddingRight;
		onCompleted: [ self showFade ];
		animation: [ :b :v | b changedWith: [ b marginRight: v asInteger ] ];
		animate: self offcanvasBrick