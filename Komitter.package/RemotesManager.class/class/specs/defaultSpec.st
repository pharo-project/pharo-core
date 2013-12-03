defaultSpec
	<spec: #default>
	
	^ SpecLayout composed
		newRow: [ :row |
			row
				add: #packages;
				addSplitter;
				newColumn: [ :col | 
					col
						newRow: [ :r |
							r 
								newColumn: [ :c | ];
								add: #removeRemote width: self buttonHeight + 4;
								add: #addRemote width: self buttonHeight
						] height: self buttonHeight;
						add: #remotes
					]
		];
		yourself