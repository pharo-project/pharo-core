history
package: aPackage class: aClass category: aCategory method: aMethod

	self 
		selectedPackage: (aPackage ifNotNil: [:p | p asTagWrapper ]);
		selectedClass: aClass;
		selectedCategory: aCategory;
		selectedMethod: aMethod.
		
	self registerHistoryNewEntry.