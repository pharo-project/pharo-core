fadeBrick: aBrick

	fadeBrick := aBrick.
	self fadeBrick
		vSpaceFill;
		hSpaceFill;
		with: [ :b | b layout zIndex: 2 ];
		with: [ :b | b layout floating: #left ];
		addUpAction: [ self hideOffcanvas ];
		marginTop: self defaultHeaderHeight;
		marginBottom: self defaultHeaderHeight negated;
		color: (Color black alpha: 0.2)