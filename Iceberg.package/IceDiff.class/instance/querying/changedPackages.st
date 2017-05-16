changedPackages
	^ self elements select: #hasChanged thenCollect: #package