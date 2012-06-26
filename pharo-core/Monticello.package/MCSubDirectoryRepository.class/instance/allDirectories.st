enumeration
allDirectories
	| remaining dir dirs |
	remaining := OrderedCollection new.
	dirs := OrderedCollection new.
	remaining addLast: directory.
	[remaining isEmpty]
		whileFalse: [dir := remaining removeFirst.
			dirs add: dir.
			dir entries
				do: [:ent | ent isDirectory
						ifTrue: [remaining
								addLast: (dir / ent name)]]].
	^ dirs