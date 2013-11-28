showLoading

	self needRebuild: false.
	self buildWithSpecLayout: self loadingSpec.

	self focusOrder removeAll