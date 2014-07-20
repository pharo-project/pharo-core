togglePrettyPrint
	"Toggle whether pretty-print is in effectin the code pane"

	self okToChange ifTrue:
		[self showingPrettyPrint
			ifTrue:
				[self contentsSymbol: #source]
			ifFalse:
				[self contentsSymbol: #prettyPrint].
		self setContentsToForceRefetch.
		self contentsChanged]

