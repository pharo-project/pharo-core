elementary steps
generateScriptAndUpdateMethodForNewVersion
	"Use me to generate the script and update method"
	"self new generateScriptAndUpdateMethodForNewVersion"
	
	self compileScriptMethodWithCurrentPackages: self currentUpdateVersionNumber.
	self compileNewUpdateMethod.