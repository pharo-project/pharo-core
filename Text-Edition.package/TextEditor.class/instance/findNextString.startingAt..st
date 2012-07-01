find-select
findNextString: aSubString startingAt: searchIdx 
	| idx |
	idx := self string findString: aSubString startingAt: searchIdx.
	^ idx isZero ifFalse: [idx to: idx + aSubString size - 1]
			