testPrepostProjectLoadsDo
	| project version loader loadDirective x |
	project := self project.

	version := project version: '1.1.6-baseline'.
	loader := version fetch.
	loadDirective := loader loadDirective.
	loadDirective prepostLoadDirectivesDo: [:directive |
		directive preLoadDo: [:pre | self assert: (#alternatePreloadForCore == directive spec preLoadDoIt value) ].
		directive postLoadDo: [:post | self assert: (#postloadForProject == directive spec postLoadDoIt value) ]].
