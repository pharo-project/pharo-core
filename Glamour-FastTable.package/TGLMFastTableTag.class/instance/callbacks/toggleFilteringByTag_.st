toggleFilteringByTag: aTag
	(self shouldFilterByTag: aTag)
		ifTrue: [ self tagsToFilterBy remove: aTag ]
		ifFalse: [ self tagsToFilterBy add: aTag ].
	self resetChildrenContent.
	self tableRefresh