beSelected

	self removeAllBricks.
	self addBrickBack: self selectedLabel.
	self themer tabLabelThemer selectedStyleFor: self.
	self changed