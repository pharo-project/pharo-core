testPaneRemovedAnnouncement
	| accumulator presentation annoumcementsCount |
	accumulator := GLMAccumulator new.
	presentation := GLMPresentation new.
	accumulator addPresentation: presentation.
	annoumcementsCount := 0.
	accumulator on: GLMPaneRemoved do: [ :ann | annoumcementsCount := annoumcementsCount + 1 ].
	1 to: 42 do: [ :i | accumulator entity: i ].
	self assert: annoumcementsCount equals: 0.
	1 to: 42 do: [ :i | accumulator removePaneIndex: 1 ].
	self assert: annoumcementsCount equals: 42