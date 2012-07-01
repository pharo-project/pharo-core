utilities
userAgentString 
	"self userAgentString."

	^'User-Agent: ',
		SystemVersion current version, '-', 
		SystemVersion current highestUpdate printString