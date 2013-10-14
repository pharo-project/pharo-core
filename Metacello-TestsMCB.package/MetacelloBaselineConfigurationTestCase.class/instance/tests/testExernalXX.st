testExernalXX
    "#for:do: in spec"

    | version expected repo constructor |
    repo := MetacelloScriptingResource current externalRepository.
    Gofer new
        repository: repo;
        package: 'BaselineOfExternalXX';
        load.
    version := (Smalltalk at: #'BaselineOfExternalXX') project version.
    expected := 'spec description: ''MetacelloScriptingResource>>externalBaselineXX:''.
spec 
	package: ''External-CoreX'';
	package: ''External-TestsX'' with: [
		spec requires: #(''External-CoreX'' ). ].
spec 
	group: ''Core'' with: #(''External-CoreX'' );
	group: ''default'' with: #(''Core'' );
	group: ''Tests'' with: #(''External-TestsX'' ).'.
    self assert: version versionSpec printString = expected