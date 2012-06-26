proxy settings
proxyTestingComment
	"Test Kevin's SmartCache on this machine"
	"	HTTPSocket useProxyServerNamed: '127.0.0.1' port: 8080.
		HTTPSocket httpShowPage: 'http://www.disneyblast.com/default.html'.
		HTTPSocket stopUsingProxyServer.	"

	"Test getting to outside world from DOL"
	"	HTTPSocket useProxyServerNamed: 'web-proxy.online.disney.com' port: 8080.
		HTTPSocket httpShowPage: 'http://www.apple.com/default.html'.
		HTTPSocket stopUsingProxyServer.	"

	"Test Windows Machine in our cubicle at DOL"
	"	HTTPSocket useProxyServerNamed: '206.18.67.150' port: 8080.
		HTTPSocket httpShowPage: 'http://....'.
		HTTPSocket stopUsingProxyServer.	"

	"	HTTPSocket httpShowPage: 'kids.online.disney.com/'	"
	"	HTTPSocket httpShowGif: 'kids.online.disney.com/~kevin/images/dlogo.gif'	"
