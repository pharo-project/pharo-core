repositories
url: anUrlString username: aUsernameString password: aPasswordString
	"Add anUrlString as a repository for the following package operations."

	| repository url |
	
	url := anUrlString asUrl.
	
	(url scheme = #ftp) 
		ifTrue: [ 
			repository := MCFtpRepository
				host: (url port ifNil: [ url authority ] ifNotNil: [ url authority , ':', url port ])
				directory: url fullPath allButFirst "FTW: MCFtpRepository assumes NO prefixed / in the path"
				user: aUsernameString
				password: aPasswordString  ]
		ifFalse: [	
			(#(http https) includes: url scheme)
				ifTrue: [ repository := MCHttpRepository location: anUrlString user: aUsernameString password: aPasswordString ]
				ifFalse: [ 
					"generally we're using MCCacheRepository... are there any other ones used?"
					repository := MCCacheRepository new directory: anUrlString asFile ]].
		
	self repository: repository