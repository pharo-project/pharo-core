testGetBaseline
    | projectSpec expected |
    Metacello new
        baseline: 'ExternalX';
        repository: 'filetree://' , externalDirectory fullName;
        get.
    projectSpec := Metacello registry
        baseline: 'ExternalX';
        list.
    expected :=  'spec 
	name: ''ExternalX'';
	versionString: ''baseline'';
	repository: ''filetree://' , externalDirectory fullName, '''.'.
    self assert: projectSpec printString = expected