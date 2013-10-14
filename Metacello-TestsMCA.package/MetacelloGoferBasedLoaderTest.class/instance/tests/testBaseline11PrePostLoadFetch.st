testBaseline11PrePostLoadFetch

	| project version |
	project := self project.
	version := project version: '1.1-baseline'.
	self deny: preLoadExecuted.
	self deny: postLoadExecuted.
	version fetch.
	self deny: preLoadExecuted.
	self deny: postLoadExecuted.
