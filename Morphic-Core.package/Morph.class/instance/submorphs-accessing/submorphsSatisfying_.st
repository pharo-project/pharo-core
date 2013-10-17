submorphsSatisfying: aBlock
	^ submorphs select: [:m | (aBlock value: m) == true]