unescapePercents
	"decode %xx form.  This is the opposite of #encodeForHTTP"
	^ self unescapePercentsWithTextEncoding: 'utf-8'.