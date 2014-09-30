actionsForPreviousContents
	^ self class repository reverse
		collect: [ :each | 
			GLMGenericAction new
				title: (each content asString contractTo: 50);
				action: [ :text | 
					self pushToRepositoryFrom: text.
					text entity: each.
					self class repository remove: each.
					text update ];
				yourself ]