settings
blabEmail: aBlabEmailString
	BlabEmail := aBlabEmailString.
	self blabEmail 
		ifEmpty: [HTTPSocket blabEmail: '']
		ifNotEmpty: [HTTPSocket blabEmail: 'From: ', BlabEmail, ' <crlf>']