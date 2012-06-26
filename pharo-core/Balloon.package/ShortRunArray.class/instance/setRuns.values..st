private
setRuns: runArray values: valueArray
	| runLength value |
	1 to: runArray size do:[:i|
		runLength := runArray at: i.
		value := valueArray at: i.
		self setRunAt: i toLength: runLength value: value.
	].