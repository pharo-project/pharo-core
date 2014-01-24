defaultSpec
	<spec: #default>

	^ SpecLayout composed
		newColumn: [ :r |
			r 
				add: #label
				height: self toolbarHeight;
				add: #protocols ];
		yourself