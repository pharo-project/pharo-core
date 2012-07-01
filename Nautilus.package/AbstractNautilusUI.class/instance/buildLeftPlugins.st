plugins display
buildLeftPlugins

	| left |
	left := self model plugins select: [:each | each position = #left ].