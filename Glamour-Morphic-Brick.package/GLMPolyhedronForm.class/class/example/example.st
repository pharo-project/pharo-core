example
	
	"self example"
	GLMFoundationBrick new
		addBrickBack: (self from: { 0.25@0.25. 0.75@0.25. 0.75@0.75. 0.25@0.75 } color: Color green);
		addBrickBack: (self from: { 0.25@0.25. 0.75@0.25. 0.75@0.75. 0.25@0.75 } color: Color blue);
		extent: 300@300;
		openInWindow