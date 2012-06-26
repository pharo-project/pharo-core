PharoKernel-private
privCleanShutDownList

	#( #FreeTypeSettings #FreeTypeCache #FT2Handle #LogicalFont 
		#MCMethodDefinition #InternetConfiguration #TTCFont 
		#CPUWatcher #ProcessBrowser   #SecurityManager 
 		#CommandHistory   #Password #HttpUrl 
		#StrikeFont #PasteUpMorph #Form #ZnServer 
	) do: [:className |
		Smalltalk removeFromShutDownList: (Smalltalk classNamed: className)].