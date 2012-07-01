defaults
pharoDistribution
	"Returns the correct pharo distribution url"
	^'http://smalltalkhub.com/mc/Pharo/Packages', (SystemVersion current major asString, SystemVersion current minor asString, '/main').
	
	