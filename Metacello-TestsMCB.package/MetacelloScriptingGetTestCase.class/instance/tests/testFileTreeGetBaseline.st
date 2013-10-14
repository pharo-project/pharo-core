testFileTreeGetBaseline
    | project versionSpec expected |
    project := Metacello new
        baseline: 'ExternalX';
        repository: 'filetree://' , externalDirectory fullName;
        get.
    versionSpec := project version versionSpec.
    expected := 'spec description: ''MetacelloScriptingResource>>externalBaselineX:''.
spec 
	package: ''External-CoreX'';
	package: ''External-TestsX'' with: [
		spec requires: #(''External-CoreX'' ). ].
spec 
	group: ''Core'' with: #(''External-CoreX'' );
	group: ''default'' with: #(''Core'' );
	group: ''Tests'' with: #(''External-TestsX'' ).'.
    self assert: versionSpec printString = expected