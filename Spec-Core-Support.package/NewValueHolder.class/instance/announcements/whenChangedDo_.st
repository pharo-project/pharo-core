whenChangedDo: aBlock

	| block |
	block := [:announcement :ann | aBlock cull: announcement newContents cull: announcement oldContents cull: announcement cull: ann ].
	announcer when: ValueChanged do: block