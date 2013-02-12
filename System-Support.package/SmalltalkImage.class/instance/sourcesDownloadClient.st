sources, change log
sourcesDownloadClient
	"Return a new HTTP client to download a sources file.
	Enforce success, but be silent when something goes wrong.
	Ask for gzip content encoding to improve download speed."
	
	^ ZnClient new
		systemPolicy;
		accept: ZnMimeType textPlain;
		ifFail: [ :exception | "ignore" ];
		setAcceptEncodingGzip;
		yourself