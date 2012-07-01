initialization
blabEmail
	"Of the form 'From: me@isp.com <crlf>'"
	^ HTTPBlabEmail ifNil: [HTTPBlabEmail := 'From: me@isp.com <crlf>']