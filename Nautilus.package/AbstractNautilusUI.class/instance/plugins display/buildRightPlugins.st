buildRightPlugins

	| right |
	right := self model plugins select: [:each | each position = #right ].