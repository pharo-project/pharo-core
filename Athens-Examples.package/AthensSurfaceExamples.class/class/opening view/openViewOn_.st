openViewOn: aBlock

	^ AthensSceneView new
		scene: aBlock;
		openInWindow 