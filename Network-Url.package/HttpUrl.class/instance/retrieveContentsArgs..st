downloading
retrieveContentsArgs: args 

	"From http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html
	 The Accept request-header field can be used to specify certain media types which are acceptable for the response. 
       Accept         = 'Accept' ':'
                        #( media-range [ accept-params ] )
       media-range    = ( '*/*'
                        | ( type '/' '*' )
                        | ( type '/' subtype )
                        ) *( ';' parameter )
       accept-params  = ';' 'q' '=' qvalue *( accept-extension )
       accept-extension = ';' token [ '=' ( token | quoted-string ) ]
	The asterisk *' character is used to group media types into ranges, with '*/*' indicating all media types and 'type/*' indicating 
	all subtypes of that type. Each media-range MAY be followed by one or more accept-params, beginning with the 'q' parameter for 
	indicating a relative quality factor. Quality factors allow the user or user agent to indicate the relative degree of preference for 
	that media-range, using the qvalue scale from 0 to 1"

	| allMimeTypes |
	allMimeTypes := '*/*; q=1'.
	^ self 
		retrieveContentsArgs: args
		accept: allMimeTypes