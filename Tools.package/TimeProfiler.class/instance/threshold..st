as yet unclassified
threshold: aTreshold
	(aTreshold ~= threshold and: [aTreshold between: 0 and: 1000])
		ifTrue: [
			threshold := aTreshold.
			self changed: #rootNodes].
	self changed: #threshold