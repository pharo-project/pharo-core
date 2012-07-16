acessing
newestComment
	^ self comments detectMax: [ :comment| comment updated ]