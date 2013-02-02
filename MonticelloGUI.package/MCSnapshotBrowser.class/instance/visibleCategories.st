listing
visibleCategories
	^ ((self packageOrganizations gather: [:ea | ea categories]),
		(self packageClasses collect: [:ea | ea category]),
			(self hasExtensions ifTrue: [{self extensionsCategory}] ifFalse: [#()]))
				asSet asSortedCollection