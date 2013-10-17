screenShotCommandOn: aBuilder 
	<worldMenu>
	(aBuilder item: #Screenshot) parent: #Tools;
		 target: World;
		 selector: #makeAScreenshot;
		 label: 'Screenshot' translated;
		 icon: Smalltalk ui icons smallScreenshotIcon