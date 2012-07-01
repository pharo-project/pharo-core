instance creation
morphicConfigure
	^ (UIManager default chooseDirectoryFrom: self defaultDirectoryName asDirectory) ifNotNil:
		[:directory |
		self new directory: directory]