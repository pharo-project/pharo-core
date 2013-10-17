findNextString: aSubString startingAt: searchIdx
	| where |
	self
		handleEdit: [where := self editor findNextString: aSubString startingAt: searchIdx].
	^ where
