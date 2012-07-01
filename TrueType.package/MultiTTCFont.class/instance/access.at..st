as yet unclassified
access: char at: index

	| wcache entry |
	wcache := self cache.
	entry := wcache at: index.
	wcache replaceFrom: index to: wcache size - 1 with: wcache startingAt: index + 1.
	wcache at: wcache size put: entry.
