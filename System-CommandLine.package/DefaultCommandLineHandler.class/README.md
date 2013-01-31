Usage: [<subcommand>] [--help] [--copyright] [--version] [--list]
	--help       print this help message
	--copyright  print the copyrights
	--version    print the version for the image and the vm
	--list       list a description of all active command line handlers
	<subcommand> a valid subcommand in --list
	
Documentation:
A DefaultCommandLineHandler handles default command line arguments and options.
The DefaultCommandLineHandler is activated before all other handlers. 
It first checks if another handler is available. If so it will activate the found handler.