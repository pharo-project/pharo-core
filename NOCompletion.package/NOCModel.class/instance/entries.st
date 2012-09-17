accessing
entries
	| ent more |
	entries ifEmpty: [ self loadEntries ].
	^  entries