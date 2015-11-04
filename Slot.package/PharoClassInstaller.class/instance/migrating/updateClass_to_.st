updateClass: oldClass to: newClass
	newClass classLayout compactClassIndex: oldClass classLayout compactClassIndex.
	newClass updateInstancesFrom: oldClass.