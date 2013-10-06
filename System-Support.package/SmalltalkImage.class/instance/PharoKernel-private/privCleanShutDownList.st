privCleanShutDownList

	#( #FreeTypeSettings #FreeTypeCache #FT2Handle #LogicalFont 
		#MCMethodDefinition #InternetConfiguration #TTCFont 
		#CPUWatcher #ProcessBrowser   #SecurityManager 
 		#CommandHistory   #Password #HttpUrl 
		#StrikeFont #WorldMorph #Form #ZnServer 
	) do: [:className |
		Smalltalk removeFromShutDownList: (Smalltalk classNamed: className)].