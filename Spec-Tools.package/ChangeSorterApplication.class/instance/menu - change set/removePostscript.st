removePostscript

	self model removePostscriptFrom: self selectedChangeSet.
	changesListModel setSelectedItem: self selectedChangeSet