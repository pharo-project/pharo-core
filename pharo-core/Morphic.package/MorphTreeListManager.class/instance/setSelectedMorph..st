selection change
setSelectedMorph: aMorph
	| path  |
	
		path := aMorph ifNotNil: [aMorph path collect: [:m | m complexContents]].
		lastClickedMorph := aMorph.
		self emptySelection.
		self addToSelection: lastClickedMorph.
		self selectionUpdateFromViewWhile: [ | selHolder |
			selHolder := self newSelectionHolderWithNodePath: path.
			self listModel selection: selHolder]
