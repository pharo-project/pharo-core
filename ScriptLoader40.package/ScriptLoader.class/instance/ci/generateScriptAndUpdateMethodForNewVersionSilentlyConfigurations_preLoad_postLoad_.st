generateScriptAndUpdateMethodForNewVersionSilentlyConfigurations: configurations preLoad: preload postLoad: postLoad
	"Use me to generate the script and update method"
	"self new generateScriptAndUpdateMethodForNewVersion"
	
	self compileScriptMethodWithCurrentPackages: self currentScriptVersionNumber.
	self 
		compileNewUpdateMethodSilentlyConfigurations: configurations 
		preLoad: preload 
		postLoad: postLoad