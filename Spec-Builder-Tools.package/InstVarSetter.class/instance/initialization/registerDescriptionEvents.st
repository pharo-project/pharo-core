registerDescriptionEvents

	descriptionHolder whenChangedDo: [:desc|| items |
		self initializeBindingsFrom: desc.
		items := desc addInstVarDescriptions select: [:e | e type inheritsFrom: ComposableModel ].
		list items: (items sort: [:a :b | a name < b name ])]