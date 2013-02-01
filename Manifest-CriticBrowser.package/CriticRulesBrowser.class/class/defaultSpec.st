specs
defaultSpec
	<spec>
	
	^ SpecLayout composed 
		newColumn: [:c |
			c 
				newRow: [:r |
					r 
						add: #rulesModel;
						addSplitter;
						newColumn: [:c1 |
							c1 
								add: #(criticModel textInputFieldModel) height: 25;
								add: #(criticModel criticsModel);
								add: #(criticModel toolbarModel) height: 25 ]];
				addSplitter;
				add: #(criticModel textModel) ]