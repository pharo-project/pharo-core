CodeUpdate is based on the old class AutoStart.
Since AbstractLauncher and all its subclasses have been removed, all the messages about theses classes in AutoStart were deleted.

CodeUpdate purpose is to propose the update for the code of your Pharo image when it starts.

You can enable or disable it by:
	CodeUpdate updateFromServerAtStartup: true. "enable"
	CodeUpdate updateFromServerAtStartup: true. "disable"
	
You can add or delete this class from the StartUp list by:
	CodeUpdate install. "add"
	CodeUpdate uninstall. "delete"
	
