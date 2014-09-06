buildWidget
	^ Tab new
		model: self;
		label: self label;
		icon: self icon;
		retrievingBlock: self retrievingBlock;
		morph: self contents;
		menu: self menu;
		closeable: self closeable;
		setActionsFrom: self actionsBlock;
		when: #tabSelected send: #tabSelected to: self;
		yourself