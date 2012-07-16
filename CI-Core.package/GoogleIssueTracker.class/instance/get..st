private
get: anUrl
	| client |
	
	client := self client.
	client url: anUrl.
	
	^ client get; response