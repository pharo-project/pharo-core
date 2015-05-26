restrictedBrowseGroups: aCollection

	aCollection
		ifNotEmpty: [:groups || classes newEnvironment |
			classes := groups gather: [:group | group classes].
			newEnvironment := self browsedEnvironment forClasses: classes.
			self model class openOnGroup: groups first inEnvironment: newEnvironment ]