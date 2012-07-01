converting
asPacked

	self inject: 0 into: [:pack :next | pack * 16r100000000 + next asInteger].
