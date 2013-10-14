testBaseline201
    | project version expected actual |
    project := self projectWith: #().
    version := project version: '2.0.1-baseline'.
    expected := 'spec blessing: #''baseline''.
spec preLoadDoIt: #''preloadForCore''.
spec postLoadDoIt: #''postloadForCore:package:''.
spec project: ''Example Project'' with: [
		spec
			className: ''ConfigurationOfExampleProject'';
			versionString: ''1.0-baseline'';
			preLoadDoIt: #''preloadForProject'';
			postLoadDoIt: #''postloadForProject'';
			loads: #(''core'' ) ].
spec group: ''Core'' with: #(''Example Project'' ).'.
    actual := version spec printString.
    self assert: expected = actual