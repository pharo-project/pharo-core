doLayout

	self layoutSubbricks.
	self subbricks do: [ :each | each doLayout ]