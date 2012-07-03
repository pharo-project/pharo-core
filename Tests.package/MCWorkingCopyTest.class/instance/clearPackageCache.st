running
clearPackageCache
	| dir |
	dir := MCCacheRepository default directory.
	(dir filesMatching: 'MonticelloMocks*') do: [:ea | ea ensureDeleted ].
	(dir filesMatching: 'MonticelloTest*') do: [:ea | ea ensureDeleted].
	(dir filesMatching: 'rev*') do: [:ea | ea ensureDeleted].
	(dir filesMatching: 'foo-*') do: [:ea | ea ensureDeleted].
	(dir filesMatching: 'foo2-*') do: [:ea | ea ensureDeleted].