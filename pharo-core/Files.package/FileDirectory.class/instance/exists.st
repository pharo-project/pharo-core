testing
exists
"Answer whether the directory exists"

	| result |
	result := self primLookupEntryIn: pathName asVmPathName index: 1.
	^ result ~= #badDirectoryPath
