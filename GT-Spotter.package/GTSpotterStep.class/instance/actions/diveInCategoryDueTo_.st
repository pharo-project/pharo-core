diveInCategoryDueTo: anEventType

	self spotter
		requestNextCategoryStepWith: self selected processorLink for: #diveInCategory;
		notifyDiveInCategory: self selected processor for: anEventType
	