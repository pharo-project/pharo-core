testSimulateRightClick
	"self run: #testSimulateRightClick"
	
	| workspace menu |
	workspace := Smalltalk tools workspace open.
	morph := self waitForMorphThat: [ :its | its model == workspace ].
	menu := self menuOpenedDuring: [ morph simulateRightClick ].
	self assert: menu isNil not.