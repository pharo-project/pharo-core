testUsernamePassword
	"basic case with a username+password specified"

	url := 'http://user:pword@someserver.blah:8000/root/index.html' asUrl.
	self should: [ url scheme = 'http' ].
	self should: [ url host = 'someserver.blah' ].
	self should: [ url port = 8000 ].
	self should: [ url pathSegments first = 'root' ].
	self should: [ url username = 'user' ].
	self should: [ url password = 'pword' ].	"basic case for a relative url"
	baseUrl := 'http://anotherserver.blah:9999/somedir/someotherdir/stuff/' asUrl.
	url := 'http://user:pword@someserver.blah:8000/root/index.html' asUrl inContextOf: baseUrl.
	self should: [ url scheme = 'http' ].
	self should: [ url host = 'someserver.blah' ].
	self should: [ url port = 8000 ].
	self should: [ url pathSegments first = 'root' ].
	self should: [ url username = 'user' ].
	self should: [ url password = 'pword' ]