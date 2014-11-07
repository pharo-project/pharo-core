actionsForPreviousContents
	^ GTPlayBook instance pages
		collect: [ :each | 
			GLMGenericAction new
				title: (each content asString contractTo: 50);
				action: [ :text | 
					text entity content: each content.
					text update ];
				yourself ]