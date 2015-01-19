example
	"self example"
	| rootBrick generator colors|	
	
	rootBrick := GLMStackedScrollPaneBrick new
		color: Color white.
	rootBrick band layoutPolicy: self new.
	
	generator:= [
		1 to: 10 do: [ :index | |brick|
			brick := GLMLabelBrick new.
			brick color: (Color random alpha: 0.2).
			brick height: 30.
			brick text: 'item',index asString.
			rootBrick addBrickBack: brick ] ].
	
	colors := { Color red . Color green . Color yellow . Color pink . Color orange . Color purple}.
	1 to: 6 do: [ :index | |brick|
		brick := GLMLabelBrick new
			color: (colors at: index);
			text: ('Title ',index asString);
			textPosition: #center;
			height: 30.
		brick layoutProperties
			floating: #stack;
			hShrinkWrap.
			
		rootBrick addBrickBack: brick.
		generator value.
	].

	rootBrick asBrickedMorph
		extent: 400@400;
		openInWindow