update60077
	"self new update60077"
	self withUpdateLog: '18466 Make Rubric packages internal
	https://pharo.fogbugz.com/f/cases/18466

18465 EncoderForV3 does not have its specification in its comment
	https://pharo.fogbugz.com/f/cases/18465

18467 Make CodeImporter interal
	https://pharo.fogbugz.com/f/cases/18467'.
	self loadTogether: self script60077 merge: false.
	
#Rubric asPackage mcWorkingCopy repositoryGroup: #Kernel asPackage mcWorkingCopy repositoryGroup.
#'Rubric-Rules' asPackage mcWorkingCopy repositoryGroup: #Kernel asPackage mcWorkingCopy repositoryGroup.
#'Rubric-Styling' asPackage mcWorkingCopy repositoryGroup: #Kernel asPackage mcWorkingCopy repositoryGroup.
ScriptLoader new unloadPackageNamed: #ConfigurationOfRubric.
#'CodeImport' asPackage mcWorkingCopy repositoryGroup: #Kernel asPackage mcWorkingCopy repositoryGroup.
ScriptLoader new unloadPackageNamed: #ConfigurationOfCodeImporter.
	self flushCaches.
