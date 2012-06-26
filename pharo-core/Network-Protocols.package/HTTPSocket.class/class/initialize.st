initialization
initialize
	"HTTPSocket initialize"

	ParamDelimiters := ' ', String crlf.
	HTTPProxyPort := 80.
	self httpProxyServer: nil.
	HTTPBlabEmail := ''.  "	'From: somebody@no.where', CrLf	"
	HTTPProxyCredentials := ''.