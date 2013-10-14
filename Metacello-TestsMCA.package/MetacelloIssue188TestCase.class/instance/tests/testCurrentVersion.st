testCurrentVersion

	| cv |
	cv := self project currentVersion.
	self assert: cv == nil.
