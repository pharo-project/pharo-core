basicLoadFromPublishUrl: aString
	^ GTPlayPage new 
		publishedUrl: aString;
		saveContent: (GTUrlProvider new get: aString)
		yourself