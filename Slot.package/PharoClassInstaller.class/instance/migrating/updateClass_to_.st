updateClass: oldClass to: newClass
	newClass layout compactClassIndex: oldClass layout compactClassIndex.
	newClass updateInstancesFrom: oldClass.