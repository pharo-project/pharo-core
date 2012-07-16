integration-private
postXML: anXMLString to: anUrl
	| client entity |
	"google allows committing changes only on https"
	anUrl scheme: 'https'.
	
	client := self tracker client.
	entity := ZnEntity text: anXMLString.
	entity contentType: ((ZnMimeType main: 'application' sub: 'atom+xml') setCharSetUTF8).
	client 
		url: anUrl;
		entity: entity;
		post.
	
	^ client response