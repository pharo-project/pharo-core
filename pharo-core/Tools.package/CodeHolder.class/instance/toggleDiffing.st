diffs
toggleDiffing
	"Toggle whether diffs should be shown in the code pane.  If any kind of diffs were being shown, stop showing diffs.  If no kind of diffs were being shown, start showing whatever kind of diffs are called for by default."

	| wasShowingDiffs |
	self okToChange ifTrue:
		[wasShowingDiffs := self showingAnyKindOfDiffs.
		self showDiffs: wasShowingDiffs not.
		self setContentsToForceRefetch.
		self contentsChanged]

