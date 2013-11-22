defaultNodeFor: item

	^ TreeNodeModel new
		content: item;
		children: [ self childrenFor: item ];
		yourself