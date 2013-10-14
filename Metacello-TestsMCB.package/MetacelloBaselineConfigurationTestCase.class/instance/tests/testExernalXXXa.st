testExernalXXXa
    "#for:do: in spec#custom attribute not defined"

    | version expected repo constructor project |
    repo := MetacelloScriptingResource current externalRepository.
    Gofer new
        repository: repo;
        package: 'BaselineOfExternalXXX';
        load.
    project := MetacelloMCBaselineProject new
        projectAttributes: #();
        yourself.
    version := (constructor := MetacelloBaselineConstructor
        on: (Smalltalk at: #'BaselineOfExternalXXX') new
        project: project) project version.
    expected := 'spec description: ''MetacelloScriptingResource>>externalBaselineXXX:''.
spec 
	package: ''External-CoreX'';
	package: ''External-TestsX'' with: [
		spec requires: #(''External-CoreX'' ). ].
spec 
	group: ''Core'' with: #(''External-CoreX'' );
	group: ''default'' with: #(''Core'' );
	group: ''Tests'' with: #(''External-TestsX'' ).'.
    self assert: version versionSpec printString = expected