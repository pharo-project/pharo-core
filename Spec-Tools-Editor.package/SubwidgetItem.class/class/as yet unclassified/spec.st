spec
	<spec>
	
	^ SpecLayout composed 
		newRow: [:r |
			r
				add: #instVarName;
				add: #classChooser;
				newColumn: [:c | c add: #ok ] width: 75 ] 
		height: 25;
		send: #borderWidth: withArguments: { 1 };
		yourself