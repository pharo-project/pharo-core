spec
spec
<spec>

	^ SpecLayout composed
		newColumn: [:c | 
			c 
				newRow: [:r | r 
								add: #issueTitle;
								add: #type width: 150 ] height: 30;
				add: #description ];
		yourself