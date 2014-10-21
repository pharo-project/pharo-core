defaultSpec
	<spec: #default>

	^ SpecLayout composed
		newRow: [ :row |
			row
				newColumn: [ :c1 |
					c1
						add: #tree;
						newRow: [ :r |
							r 
								newColumn: [ :c |
									c 
										newRow: [ :row1 | 
											row1 
												add: #commitMessage;
												add: #previousMessages width: self buttonHeight
										] height: self buttonHeight;
										add: #message
								];
								addVSplitter;
								newColumn: [ :c |
									c 
										newRow: [:r1 | ] height: self buttonHeight;
										newRow: [ :r1 |
											r1 
												add: #authorName width: 50;
												add: #author
										] height: self inputTextHeight +4 ;
										"add: #checkCommit height: self buttonHeight;"
										newRow: [ :r1 |
											r1 
												add: #remoteLabel width: 50;
												add: #remotes;
												add: #manageRemotes width: self buttonHeight
										] height: self buttonHeight
								]
						] height: (4*self buttonHeight + 12)
				] ] bottom: 0.4;
		addHSplitter;
		newRow: [ :row | row add: #diff ] top: 0.6;
		yourself