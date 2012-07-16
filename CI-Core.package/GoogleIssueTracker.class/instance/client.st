private
client
	|client|
	client := ZnEasy client.
	
	self isAuthenticated 
		ifTrue: [ client headerAt: 'Authorization' add: 'GoogleLogin auth="', self token id, '"'].		
	
	^ client