package: aPackage class: aClass category: aCategory method: aMethod

	self 
		selectedPackage: aPackage;
		selectedClass: aClass;
		selectedCategory: aCategory;
		selectedMethod: aMethod.
		
	self selectedClass notNil ifTrue:[self registerHistoryNewEntry ]