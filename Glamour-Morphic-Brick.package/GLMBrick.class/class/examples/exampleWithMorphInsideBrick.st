exampleWithMorphInsideBrick

	"self exampleWithMorphInsideBrick"

	|foundation brick morph|
	
	foundation := GLMFoundationBrick new.
	foundation extent: 800@400.

	brick := GLMLabelBrick new.
	brick text: 'Hello, I''m a Brick inside another Brick!'.
	brick hSpaceFill: 50.
	brick color: Color lightBlue lighter.

	morph := Morph new.
	morph color: Color lightGreen lighter.
	morph layoutProperties: GLMBrickLayoutProperties new.
	morph hSpaceFill: 50.

	morph addMorphBack: (LabelMorph new
		contents: 'Hello, I''m a Morph inside another Morph inside Brick!';
		hResizing: #spaceFill;
		vResizing: #spaceFill).

	foundation
		addBrickBack: brick;
		addBrickBack: morph;
		doLayout;
		openInWindow.