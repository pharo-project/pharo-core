initialize-release
initialize
	self
		add: #Image method: #reportImage;
		add: #'Image Parameters' method: #reportImageParameters;
		add: #'Image Sources' method: #reportSources;
		add: #'Image Preferences' method: #reportPreferences;
		add: #'MC Repositories' method: #reportRepositories;
		add: #'MC Working Copies' method: #reportWorkingCopies;
		add: #'VM General' method: #reportVM;
		add: #'VM Options' method: #reportVMOptions;
		add: #'VM Modules' method: #reportModules;
		add: #'VM Parameters' method: #reportVMParameters;
		add: #'VM Stats' method: #reportVMStats.
	Smalltalk os platformName = 'Win32' ifTrue: [
		self
			add: #'VM Configuration' method: #reportWin32VMConfig.
		].
	self
		add: #'OS General' method: #reportOS.
	Smalltalk os platformName = 'Win32' ifTrue: [
		self
			add: #'OS Details' method: #reportWin32OSDetails;
			add: #'Hardware Details' method: #reportWin32HardwareDetails;
			add: #'GFX Hardware Details' method: #reportWin32GFXDetails.
		].
	Smalltalk os osVersion = 'linux' ifTrue: [
		self
			add: #'OS Details' method: #reportLinuxOSDetails
	].
	self add: #'OS Environment' method: #reportOSEnvironment.
	self
		add: #'Tiny Benchmarks' method: #reportTinyBenchmarks;
		add: #'SUnit' method: #reportTestRunner";
		add: #'Debug Log' method: #reportDebugLog".
	categoriesSelected := Set with: #Image with: #'VM General'.
	self updateReport
