defaultSpec
	<spec: #default>
	
	^ SpecLayout composed
		newColumn: [ :r |
			r add: #models; add: #protocols; add: #events ];
		yourself