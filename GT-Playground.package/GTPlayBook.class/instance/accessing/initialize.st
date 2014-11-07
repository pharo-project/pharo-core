initialize
	pages := (self class cacheDirectory files 
		select: [ :each | each extension = 'ph' ] 
		thenCollect: [ :each | GTPlayPage new content: (each readStreamDo: #contents) ]) asOrderedCollection 