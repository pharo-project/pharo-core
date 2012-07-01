diffs
togglePlainSource
	"Toggle whether plain source shown in the code pane"
	
	| wasShowingPlainSource |
	self okToChange ifTrue:
		[wasShowingPlainSource := self showingPlainSource.
		wasShowingPlainSource
			ifTrue:
				[self showDocumentation: true]
			ifFalse:
				[self contentsSymbol: #source].
		self setContentsToForceRefetch.
		self changed: #contents]

