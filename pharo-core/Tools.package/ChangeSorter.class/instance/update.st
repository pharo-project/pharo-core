changeset menu
update
	"recompute all of my panes"

	self updateIfNecessary.
	parent ifNotNil: [(parent other: self) updateIfNecessary]