baseline10: spec
	<version: '1.0-baseline'>

	spec for: #common do: [	
		spec blessing: #baseline.
		spec repository: 'http://smalltalkhub.com/mc/dh83/FileSystemST/main'.
	
		
		spec
			package: 'FileSystem-Relative';
			package: 'FileSystem-Tests-Relative' with: [ 
				spec requires: #('FileSystem-Relative') ];
			package: 'FileSystem-Smalltalk' with: [ 
				spec requires: #('FileSystem-Relative')].
			
		"using groups certain packages and projects can be loaded conditionally"
		spec 
			"load the tests by default"
			group: 'default' with: #('core' 'test');
			group: 'test'    with: #('FileSystem-Tests-Relative');
			group: 'core'    with: #('FileSystem-Smalltalk')]