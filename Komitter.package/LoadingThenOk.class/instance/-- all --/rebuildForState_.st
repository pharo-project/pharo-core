rebuildForState: aState

	self needRebuild: false.
	self buildWithSpecLayout: self newSpec.

	self focusOrder removeAll