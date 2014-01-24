initialize

	categories := nil asReactiveVariable.
	sortingBlock := [:a :b | a first < b first ].
	super initialize.
      self collectShortcutDescription
