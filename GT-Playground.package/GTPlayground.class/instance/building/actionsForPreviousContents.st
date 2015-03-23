actionsForPreviousContents
	^ GTPlayBook instance pagesSorted
		collect: [ :each | 
			GLMGenericAction new
				title: (each content asString contractTo: 50);
				action: [ :text | 
					text entity saveContent: each content.
					text update ];
				yourself ]