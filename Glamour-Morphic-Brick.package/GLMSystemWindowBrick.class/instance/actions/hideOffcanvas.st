hideOffcanvas

	self offcanvasAnimation ifNotNil: #terminate.
	offcanvasAnimation := GLMAnimation new
		linear;
		duration: 150;
		from: self offcanvasBrick marginRight;
		to: self defaultOffcanvasWidth negated;
		onCompleted: [ self hideFade ];
		animation: [ :b :v | b changedWith: [ b marginRight: v asInteger ] ];
		animate: self offcanvasBrick