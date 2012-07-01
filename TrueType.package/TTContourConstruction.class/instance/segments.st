accessing
segments

	| segments |
	segments := OrderedCollection new.
	self segmentsDo:[:seg| segments add: seg].
	^segments