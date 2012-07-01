code pane
toggleDiffing
	"Toggle whether diffs should be shown in the code pane"

	self okToChange ifTrue:
		[super toggleDiffing.
		self changed: #contents.
		self update]

