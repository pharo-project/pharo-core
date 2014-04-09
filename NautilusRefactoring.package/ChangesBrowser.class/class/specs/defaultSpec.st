defaultSpec
	<spec>
	
	^ SpecLayout composed
		newColumn: [:c |
			c 
				newColumn: [:c2 |
					c2 
						add: #changesTree ];
				addSplitter;
				add: #textArea;
				newRow: [:r |
					r
						add: #acceptButton;
						add: #cancelButton]
				height: self toolbarHeight ]