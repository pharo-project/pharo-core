Usage: config [--help] <repository url> [<configuration>] [--install[=<version>]]
	--help              show this help message
	<repository url>    A Monticello repository name 
	<configuration>     A valid Metacello Configuration name
	<version>           A valid version for the given configuration
	
Examples:
	# display this help message
	$PharoVM My.image config
	
	# list all configurations of a repository
	$PharoVM My.image config $MC_REPOS_URL
	
	# list all the available versions of a confgurtation
	$PharoVM My.image config $MC_REPOS_URL ConfigurationOfFoo
	
	# install the stable version
	$PharoVM My.image config $MC_REPOS_URL ConfigurationOfFoo --install
	
	#install a specific version
	$PharoVM My.image config $MC_REPOS_URL ConfigurationOfFoo --install='1.5'