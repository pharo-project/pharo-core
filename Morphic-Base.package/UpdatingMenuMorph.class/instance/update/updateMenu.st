updateMenu
	"Reconstitute the menu by first removing the contents and then building it afresh"

	self removeAllMorphs.
	updater perform: updateSelector with: self

