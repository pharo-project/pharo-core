private
loadLatestPackage: aString from: aPath
	| repository |
	
	repository := MCHttpRepository
		location: aPath
		user:  ''
		password: ''.
	self loadLatestPackage: aString fromRepository: repository