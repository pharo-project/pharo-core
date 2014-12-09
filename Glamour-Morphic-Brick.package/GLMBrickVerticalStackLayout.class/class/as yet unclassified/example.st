example
	"self example"
	|foundationBrick rootBrick brick1 brick2 brick3 brick4 brick5 brick6 generator|	
	
	rootBrick := GLMStackedScrollPaneBrick new.
	rootBrick band layoutPolicy: self new.
	rootBrick color: Color white.
	
	brick1 := GLMLabelBrick new.
	brick1 height: 30.
	brick1 text: 'Title 1'.
	brick1 textPosition: #center.
	brick1 layoutProperties floating: #stack.
	brick1 color: Color red.
	
	brick2 := GLMLabelBrick new.
	brick2 color: Color green.
	brick2 text: 'Title 2'.
	brick2 textPosition: #center.
	brick2 layoutProperties floating: #stack.
	brick2 height: 30.
	
	brick3 := GLMLabelBrick new.
	brick3 color: Color yellow.
	brick3 text: 'Title 3'.
	brick3 textPosition: #center.
	brick3 layoutProperties floating: #stack.
	brick3 height: 30.
	
	brick4 := GLMLabelBrick new.
	brick4 height: 30.
	brick4 text: 'Title 4'.
	brick4 textPosition: #center.
	brick4 layoutProperties floating: #stack.
	brick4 color: Color pink.
	
	brick5 := GLMLabelBrick new.
	brick5 color: Color orange.
	brick5 text: 'Title 5'.
	brick5 textPosition: #center.
	brick5 layoutProperties floating: #stack.
	brick5 height: 30.
	
	brick6 := GLMLabelBrick new.
	brick6 color: Color purple.
	brick6 text: 'Title 6'.
	brick6 textPosition: #center.
	brick6 layoutProperties floating: #stack.
	brick6 height: 30.
	
	generator:= [
		1 to: 10 do: [ :index | |brick|
			brick := GLMLabelBrick new.
			brick color: (Color random alpha: 0.2).
			brick height: 30.
			brick text: 'item',index asString.
			rootBrick addBrickBack: brick ] ].
	
	rootBrick addBrickBack: brick1.
	generator value.
	
	rootBrick addBrickBack: brick2.
	generator value.
	
	rootBrick addBrickBack: brick3.
	generator value.
	
	rootBrick addBrickBack: brick4.
	generator value.
	
	rootBrick addBrickBack: brick5.
	generator value.
	
	rootBrick addBrickBack: brick6.
	generator value.
		
	foundationBrick := GLMFoundationBrick new.
	foundationBrick brickRoot: rootBrick.
	foundationBrick extent: 400@400.
	foundationBrick openInWindow.
	foundationBrick color: Color pink.
