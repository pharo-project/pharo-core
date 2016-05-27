freshSortedSessionDirectoryEntries

	^ (self directory entries
		select: [ :each | each extension = 'ombu'  ])
		sorted: [ :a :b | (a perform: selectorForSorting) >= (b perform: selectorForSorting) ].