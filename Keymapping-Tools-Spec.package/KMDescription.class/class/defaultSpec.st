specs
defaultSpec
	<spec>
	
	^ SpecLayout composed
		newColumn: [:c | 
			c 
				newRow: [:r | 
					r 
						add: #dropList;
						add: #displayList ] height: 25;
				add: #list;
				add: #okToolbar height: 25 ]