generateScriptAndUpdateMethodForNewVersion
	"Use me to generate the script and update method"
	"self new generateScriptAndUpdateMethodForNewVersion"
	
	self compileScriptMethodWithCurrentPackages: self currentScriptVersionNumber.
	self compileNewUpdateMethod.
	
	"remove old update and script methods"
	self removeUpdateMethods.
	self removeScriptMethods.