printContentsOn: stream
	super printContentsOn: stream.
	clientId ifNotNil: [ stream space; print: clientId ]