initialize
socks5
	vers := 5.
	method := self class noAutorizationMethod.
	socksIP := self class defaultSocksHostAddress.
	socksPort := self class defaultSocksPort