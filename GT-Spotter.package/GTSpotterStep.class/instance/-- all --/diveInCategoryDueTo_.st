diveInCategoryDueTo: anEventType

	self spotter
		requestNextCategoryStepWith: self selected processorLink;
		notifyDiveInCategory: self selected processor for: anEventType
	