private
findLastNonNilSubTable

	(self basicAt: self basicSize) ifNotNil: [^ self basicSize].

	self basicSize - 1 to: 1 by: -1 do: [:lastIndex |
		(self basicAt: lastIndex) ifNotNil: [^ lastIndex].
	].
	^ 0.
