proxy settings
removeProxyException: domainName
	"Remove a (partial, wildcard) domain name from the list of proxy exceptions"

	self httpProxyExceptions remove: domainName ifAbsent: []