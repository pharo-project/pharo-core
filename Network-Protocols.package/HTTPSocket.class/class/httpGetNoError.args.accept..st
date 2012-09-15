get the page
httpGetNoError: url args: args accept: mimeType
	"Return the exact contents of a web file.  Do better error checking.  Asks for the given MIME type.  To fetch raw data, you can use the MIMI type 'application/octet-stream'.  If mimeType is nil, use 'text/html'.  The parsed header is saved. Use a proxy server if one has been registered."

	| document data |
	document := self httpGetDocument: url  args: args  accept: mimeType.
	(document isString) ifTrue: [
		"strings indicate errors"
		^ document ].
	data := document content.
	(data beginsWith: '<HTML><HEAD>' , String lf , '<TITLE>4')
		ifTrue: ["an error message  404 File not found"
				^ data copyFrom: 21 to: data size-16].	

	^ (RWBinaryOrTextStream with: data) reset
