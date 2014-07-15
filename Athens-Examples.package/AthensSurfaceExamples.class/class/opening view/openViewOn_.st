openViewOn: aBlock

	^ AthensSceneView new
		scene: (self newAsSceneFrom:aBlock);
		openInWindow 