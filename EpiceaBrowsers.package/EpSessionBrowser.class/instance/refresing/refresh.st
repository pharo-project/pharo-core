refresh

	| sessionsFileReferences |
	sessionsFileReferences := self freshSortedSessionDirectoryEntries.

	sessionsTreeModel roots: sessionsFileReferences.