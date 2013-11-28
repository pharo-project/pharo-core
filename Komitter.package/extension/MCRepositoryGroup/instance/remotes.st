remotes

	^ self repositories select: [ :each | each isRemote ]