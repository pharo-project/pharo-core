packageInfoNames
	"self packageInfoNames"
	
	^ self allManagers collect: [:each | each package name]
	
	