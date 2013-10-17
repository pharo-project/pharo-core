loaderClass

	loaderClass == nil ifTrue: [ loaderClass := self defaultLoaderClass ].
	^loaderClass