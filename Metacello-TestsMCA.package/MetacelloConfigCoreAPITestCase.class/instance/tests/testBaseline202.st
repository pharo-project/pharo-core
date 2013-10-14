testBaseline202
    | project version expected actual |
    project := self projectWith: #(#'outer').
    version := project version: '2.0.2-baseline'.
    expected := 'spec blessing: #''baseline''.
spec preLoadDoIt: nil.
spec postLoadDoIt: nil.
spec 
	project: ''Example Project'' with: [
		spec
			className: ''ConfigurationOfExampleProject'';
			versionString: ''1.0-baseline'';
			preLoadDoIt: #''preloadForProject'';
			postLoadDoIt: #''postloadForProject'';
			loads: #(''core'' ) ];
	project: ''Copied Example'' copyFrom: ''Example Project'' with: [
		spec
			preLoadDoIt: #''alternatePreloadForCore'' ].
spec group: ''Core'' with: #(''Example Project'' ).'.
    actual := version spec printString.
    self assert: expected = actual