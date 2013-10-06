standardMIMETypes
	"We had to split this method because of the 256 literal limit in methods.
	Please keep it in alphabetical order for easier maintenance."
	"MIMEType standardMIMETypes"

	| mimeTypes |
	mimeTypes := self standardMIMETypes2.
	mimeTypes
		at: 'a' put: #('application/octet-stream');
		at: 'aam' put: #('application/x-authorware-map');
		at: 'aas' put: #('application/x-authorware-map');
		at: 'adr' put: #('application/x-msaddr');
		at: 'ai' put: #('application/postscript');
		at: 'aif' put: #('audio/x-aiff');
		at: 'aifc' put: #('audio/x-aiff');
		at: 'aiff' put: #('audio/aiff' 'audio/x-aiff');
		at: 'arc' put: #('application/octet-stream');
		at: 'asf' put: #('video/x-ms-asf');
		at: 'asx' put: #('video/x-ms-asf');
		at: 'au' put: #('audio/basic');
		at: 'avi' put: #('video/avi');
		at: 'axs' put: #('application/olescript');
		at: 'bcpio' put: #('application/x-bcpio');
		at: 'bdf' put: #('application/x-fontbitmap');
		at: 'bin' put: #('application/octet-stream');
		at: 'bmp' put: #('image/bmp');
		at: 'c' put: #('text/plain');
		at: 'cdf' put: #('application/x-netcdf');
		at: 'chat' put: #('application/x-chat');
		at: 'cht' put: #('audio/x-dspeech');
		at: 'class' put: #('application/octet-stream');
		at: 'con' put: #('application/x-connector');
		at: 'cpio' put: #('application/x-cpio');
		at: 'cpp' put: #('text/plain');
		at: 'cpt' put: #('application/mac-compactpro');
		at: 'csh' put: #('application/x-csh');
		at: 'css' put: #('text/css' 'text/x-css');
		at: 'dfon' put: #('application/x-fontdataforktruetype');
		at: 'dfont' put: #('application/x-fontdataforktruetype');
		at: 'dms' put: #('application/octet-stream');
		at: 'doc' put: #('application/ms-word-document' 'application/msword');
		at: 'dot' put: #('application/msword');
		at: 'dump' put: #('application/octet-stream');
		at: 'dus' put: #('audio/x-dspeech');
		at: 'dvi' put: #('application/x-dvi');
		at: 'dwg' put: #('image/vnd');
		at: 'dxf' put: #('image/vnd');
		at: 'ebk' put: #('application/x-expandedbook');
		at: 'eps' put: #('application/postscript');
		at: 'etx' put: #('text/x-setext');
		at: 'exe' put: #('application/octet-stream');
		at: 'ffil' put: #('application/x-fontsuitcase');
		at: 'fh4' put: #('image/x-freehand');
		at: 'fh5' put: #('image/x-freehand');
		at: 'fhc' put: #('image/x-freehand');
		at: 'frl' put: #('application/freeloader');
		at: 'gif' put: #('image/gif');
		at: 'gtar' put: #('application/x-gtar');
		at: 'gtaru' put: #('application/x-gtar');
		at: 'gz' put: #('application/gzip');
		at: 'h' put: #('text/plain');
		at: 'hdf' put: #('application/x-hdf');
		at: 'hqx' put: #('application/mac-binhex40' 'application/octet-stream');
		at: 'htm' put: #('text/html' 'text/plain');
		at: 'html' put: #('text/html' 'text/plain');
		at: 'ief' put: #('image/ief');
		at: 'ips' put: #('application/ips');
		at: 'ivr' put: #('i-world/i-vrml');
		at: 'java' put: #('text/plain');
		at: 'jfif' put: #('image/jpeg');
		at: 'jfif-tbnl' put: #('image/jpeg');
		at: 'jpe' put: #('image/jpeg');
		at: 'jpeg' put: #('image/jpeg');
		at: 'jpg' put: #('image/jpeg');
		at: 'js' put: #('application/x-javascript');
		at: 'latex' put: #('application/x-latex');
		at: 'lha' put: #('application/octet-stream');
		at: 'lwfn' put: #('application/x-fontpostscripttype1');
		at: 'lzh' put: #('application/octet-stream');
		at: 'm4' put: #('audio/x-mp4-audio');
		at: 'm4b' put: #('audio/x-quicktime-protected-b');
		at: 'm4p' put: #('audio/x-quicktime-protected');
		at: 'm4v' put: #('video/x-mp4-video');
		at: 'man' put: #('application/x-troff-man');
		at: 'me' put: #('application/x-troff-me');
		at: 'mid' put: #('audio/midi' 'audio/x-midi');
		at: 'midi' put: #('audio/midi');
		at: 'mime' put: #('message/rfc822');
		at: 'mov' put: #('video/mov');
		at: 'movie' put: #('video/x-sgi-movie' 'video/x-sgi.movie');
		at: 'mp2' put: #('audio/mpeg');
		at: 'mp3' put: #('audio/mpeg' 'audio/x-mpeg');
		at: 'mp4' put: #('video/x-mp4-video');
		at: 'mp4v' put: #('video/x-mp4-video');
		at: 'mpe' put: #('video/mpeg');
		at: 'mpeg' put: #('video/mpeg' 'video/x-mpeg');
		at: 'mpg' put: #('video/mpg' 'video/mpeg' 'video/x-mpeg');
		at: 'mpga' put: #('audio/mpeg');
		at: 'ms' put: #('application/x-troff-ms');
		at: 'mv' put: #('video/x-sgi-movie').
	^mimeTypes