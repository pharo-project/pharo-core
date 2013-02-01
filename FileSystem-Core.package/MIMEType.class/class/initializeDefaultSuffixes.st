class initialization
initializeDefaultSuffixes
	"MIMEType initializeDefaultSuffixes"

	DefaultSuffixes := Dictionary new: 43.
	DefaultSuffixes
	at: 'application/freeloader' put: 'frl';
	at: 'application/gzip' put: 'gz';
	at: 'application/ips' put: 'ips';
	at: 'application/mac-binhex40' put: 'hqx';
	at: 'application/mac-compactpro' put: 'cpt';
	at: 'application/ms-word-document' put: 'doc';
	at: 'application/msword' put: 'doc';
	at: 'application/octet-stream' put: 'o';
	at: 'application/oda' put: 'oda';
	at: 'application/olescript' put: 'axs';
	at: 'application/pcphoto' put: 'zpa';
	at: 'application/pdf' put: 'pdf';
	at: 'application/postscript' put: 'ps';
	at: 'application/rtc' put: 'rtc';
	at: 'application/rtf' put: 'rtf';
	at: 'application/toolbook' put: 'tbk';
	at: 'application/vnd.ms-excel' put: 'xls';
	at: 'application/vnd.ms-powerpoint' put: 'pps';
	at: 'application/x-DemoShield' put: 'wid';
	at: 'application/x-authorware-map' put: 'aas';
	at: 'application/x-bcpio' put: 'bcpio';
	at: 'application/x-chat' put: 'chat';
	at: 'application/x-compress' put: 'z';
	at: 'application/x-connector' put: 'con';
	at: 'application/x-cpio' put: 'cpio';
	at: 'application/x-csh' put: 'csh';
	at: 'application/x-dvi' put: 'dvi';
	at: 'application/x-expandedbook' put: 'ebk';
	at: 'application/x-fontbitmap' put: 'pcf';
	at: 'application/x-fontdataforktruetype' put: 'dfont';
	at: 'application/x-fontopentype' put: 'otf';
	at: 'application/x-fontpostscripttype1' put: 'pfa';
	at: 'application/x-fontsuitcase' put: 'suit';
	at: 'application/x-fonttruetype' put: 'ttf';
	at: 'application/x-gtar' put: 'gtar';
	at: 'application/x-hdf' put: 'hdf';
	at: 'application/x-javascript' put: 'js';
	at: 'application/x-latex' put: 'latex';
	at: 'application/x-msaddr' put: 'adr';
	at: 'application/x-mswallet' put: 'wlt';
	at: 'application/x-netcdf' put: 'cdf';
	at: 'application/x-pgp-plugin' put: 'pgp';
	at: 'application/x-sh' put: 'sh';
	at: 'application/x-shar' put: 'shar';
	at: 'application/x-shockwave-flash' put: 'swf';
	at: 'application/x-stuffit' put: 'sit';
	at: 'application/x-sv4cpio' put: 'sv4cpio';
	at: 'application/x-sv4crc' put: 'sv4crc';
	at: 'application/x-tar' put: 'tar';
	at: 'application/x-texinfo' put: 'texi';
	at: 'application/x-troff' put: 'tr';
	at: 'application/x-troff-man' put: 'man';
	at: 'application/x-troff-me' put: 'me';
	at: 'application/x-troff-ms' put: 'ms';
	at: 'application/x-wais-source' put: 'wsrc';
	at: 'application/x.tex' put: 'tex';
	at: 'application/zip' put: 'zip';
	at: 'audio/aiff' put: 'aiff';
	at: 'audio/basic' put: 'au';
	at: 'audio/midi' put: 'midi';
	at: 'audio/mpeg' put: 'mp3';
	at: 'audio/wav' put: 'wav';
	at: 'audio/x-aiff' put: 'aiff';
	at: 'audio/x-dspeech' put: 'cht';
	at: 'audio/x-midi' put: 'mid';
	at: 'audio/x-mp4-audio' put: 'm4';
	at: 'audio/x-ms-wma' put: 'wma';
	at: 'audio/x-pn-realaudio' put: 'ram';
	at: 'audio/x-pn-realaudio-plugin' put: 'rpm';
	at: 'audio/x-quicktime-protected' put: 'm4p';
	at: 'audio/x-quicktime-protected-b' put: 'm4b';
	at: 'audio/x-realaudio' put: 'ra';
	at: 'audio/x-wav' put: 'wav';
	at: 'i-world/i-vrml' put: 'ivr';
	at: 'image/bmp' put: 'bmp';
	at: 'image/gif' put: 'gif';
	at: 'image/ief' put: 'ief';
	at: 'image/jpeg' put: 'jpg';
	at: 'image/png' put: 'png';
	at: 'image/tiff' put: 'tiff';
	at: 'image/vnd' put: 'dxf';
	at: 'image/vnd' put: 'dwg';
	at: 'image/x-cmu-rast' put: 'ras';
	at: 'image/x-freehand' put: 'fhc';
	at: 'image/x-portable-anymap' put: 'pnm';
	at: 'image/x-portable-bitmap' put: 'pbm';
	at: 'image/x-portable-graymap' put: 'pgm';
	at: 'image/x-portable-pixmap' put: 'ppm';
	at: 'image/x-rgb' put: 'rgb';
	at: 'image/x-xbitmap' put: 'xbm';
	at: 'image/x-xwindowdump' put: 'xwd';
	at: 'message/rfc822' put: 'mime';
	at: 'model/vrml' put: 'vrml';
	at: 'text/css' put: 'css';
	at: 'text/html' put: 'html';
	at: 'text/parsnegar-document' put: 'pgr';
	at: 'text/plain' put: 'text';
	at: 'text/rtf' put: 'rtf';
	at: 'text/tab-separated-values' put: 'tsv';
	at: 'text/x-css' put: 'css';
	at: 'text/x-setext' put: 'etx';
	at: 'text/xml' put: 'xml';
	at: 'video/avi' put: 'avi';
	at: 'video/mov' put: 'mov';
	at: 'video/mpeg' put: 'mpeg';
	at: 'video/mpg' put: 'mpg';
	at: 'video/quicktime' put: 'qt';
	at: 'video/vnd.vivo' put: 'vivo';
	at: 'video/x-mp4-video' put: 'mp4v';
	at: 'video/x-mpeg' put: 'mpeg';
	at: 'video/x-ms-asf' put: 'asf';
	at: 'video/x-ms-asf' put: 'asx';
	at: 'video/x-ms-wm' put: 'wm';
	at: 'video/x-ms-wmv' put: 'wmv';
	at: 'video/x-sgi.movie' put: 'movie';
	at: 'video/x-videogram' put: 'vgm';
	at: 'video/x-videogram-plugin' put: 'vgp'.
	^DefaultSuffixes


"| stream reverse |
stream := StandardFileStream forceNewFileNamed: 'foobar.txt'.
reverse := OrderedCollection new. 
MIMEType mimeMappings associationsDo: [:m |
	m value do: [:e | reverse add: m key->e]].
sorted := SortedCollection sortBlock: [:n1 :n2 | n1 value printString <= n2 value printString].
sorted addAll: reverse.
sorted do: [:s | 
	stream nextPutAll: '	at: '''.
	stream nextPutAll: s value printString.
	stream nextPutAll: ''' put: '''.
	stream nextPutAll: s key.
	stream nextPutAll: ''';';cr].
stream close."
