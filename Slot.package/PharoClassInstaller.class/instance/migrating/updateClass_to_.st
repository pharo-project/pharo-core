updateClass: oldClass to: newClass
	newClass layout compactClassIndex: oldClass layout compactClassIndex.
	self updateInstancesFrom: oldClass to: newClass