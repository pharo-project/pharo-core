API
orderedClasses

	^ self package orderedClasses select: [:e | (self package orderedClasses intersection: self classes) includes: e ]