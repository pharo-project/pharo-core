deferUpdatesWhile: aBlock

	self primitiveDeferUpdates: true.
	aBlock ensure: [  self primitiveDeferUpdates: false. ]