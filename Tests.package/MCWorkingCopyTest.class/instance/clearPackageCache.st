running
clearPackageCache
	| dir |
	dir := MCCacheRepository default directory.
	(dir fileNamesMatching: 'MonticelloMocks*') do: [:ea | dir deleteFileNamed: ea].
	(dir fileNamesMatching: 'MonticelloTest*') do: [:ea | dir deleteFileNamed: ea].
	(dir fileNamesMatching: 'rev*') do: [:ea | dir deleteFileNamed: ea].
	(dir fileNamesMatching: 'foo-*') do: [:ea | dir deleteFileNamed: ea].
	(dir fileNamesMatching: 'foo2-*') do: [:ea | dir deleteFileNamed: ea].