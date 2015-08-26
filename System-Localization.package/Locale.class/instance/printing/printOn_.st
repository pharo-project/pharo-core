printOn: aStream 
	super printOn: aStream. 
	aStream nextPutAll: 'Locale (' , self language, '-', self country , ')'