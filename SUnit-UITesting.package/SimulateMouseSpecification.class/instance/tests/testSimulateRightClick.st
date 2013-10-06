testSimulateRightClick
	"self run: #testSimulateRightClick"
	
	| workspace menu sem before after |
	workspace := Workspace open.
	morph := self waitForMorphThat: [ :its | its model == workspace ].
	menu := self menuOpenedDuring: [ morph simulateRightClick ].
	self assert: menu isNil not.