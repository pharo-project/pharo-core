runLongTestsSettingOn: aBuilder
	<systemsettings>
	
	(aBuilder setting: #shouldRun)
		target: self;
		parent: #pharoSystem;
		label: 'Run Long Tests' translated;
		description: 'Whether to run long SUnit TestCase. Tests which take long time to run should be subclasses of LongTestCase.' translated.