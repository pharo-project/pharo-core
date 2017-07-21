getPaginated: aString 
	^ IceGitHubAPIPaginatedResult api: self request: aString
