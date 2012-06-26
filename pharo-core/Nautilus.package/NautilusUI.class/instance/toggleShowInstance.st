accessing
toggleShowInstance

	self showInstance: self showInstance not.
	categoryWidget label: self categoriesLabel.
	methodWidget label: self methodsLabel.