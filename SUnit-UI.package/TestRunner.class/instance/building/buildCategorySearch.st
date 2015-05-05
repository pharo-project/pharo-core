buildCategorySearch

	^ SearchMorph new
		model: self;
		updateSelector: #categorySearchUpdate:;
		ghostText: 'PackageA|PackageB';
		yourself