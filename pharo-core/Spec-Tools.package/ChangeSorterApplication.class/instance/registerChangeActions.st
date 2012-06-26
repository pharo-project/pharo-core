initialization
registerChangeActions
	
	changesListModel
		whenSelectedItemChanged: [:change | 
			classesListModel resetSelection.
			self updateTextContents.
			change 
				ifNil: [
					classesListModel items: {}.
					methodsListModel items: {}.
					self title: self defaultTitle ]
				ifNotNil: [
					classesListModel items: (change changedClasses sort: [:a :b | a name < b name ]).
					self title: change name ]].
	