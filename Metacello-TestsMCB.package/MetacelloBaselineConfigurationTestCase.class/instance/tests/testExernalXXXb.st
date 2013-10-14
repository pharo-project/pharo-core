testExernalXXXb
    "#for:do: in spec. #custom attribute defined"

    | version expected repo constructor project |
    repo := MetacelloScriptingResource current externalRepository.
    Gofer new
        repository: repo;
        package: 'BaselineOfExternalXXX';
        load.
    project := MetacelloMCBaselineProject new
        projectAttributes: #(#'custom');
        yourself.
    version := (constructor := MetacelloBaselineConstructor
        on: (Smalltalk at: #'BaselineOfExternalXXX') new
        project: project) project version.
    expected := 'spec description: ''MetacelloScriptingResource>>externalBaselineXXX:''.
spec 
	package: ''External-CoreX'';
	package: ''External-TestsX'' with: [
		spec requires: #(''External-CoreX'' ). ];
	package: ''External-UIX''.
spec 
	group: ''Core'' with: #(''External-CoreX'' );
	group: ''default'' with: #(''Core'' );
	group: ''Tests'' with: #(''External-TestsX'' );
	group: ''UI'' with: #(''External-UIX'' ).'.
    self assert: version versionSpec printString = expected