tests
zorktestSimulateMiddleClick
	"self run: #testSimulateMiddleClick"
	
	self flag: #forSean. "this test randomly fails"
	morph := MorphHandlingMiddleButton new openInWorld.
	morph simulateMiddleClick.
	self assert: morph wasClickedWithMiddleButton.
