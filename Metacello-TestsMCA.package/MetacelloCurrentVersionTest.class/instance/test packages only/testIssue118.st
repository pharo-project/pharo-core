testIssue118

	| version cv foo packageSpec versionInfo53 wc |
	gofer
		package: 'MetacelloTestConfigurationOfFoo'; 
		load.
	foo := (Smalltalk at: #MetacelloTestConfigurationOfFoo) new project.

	version := foo version: '3.0'.
	version load.
	packageSpec := version packageNamed: 'GoferBeau'.
	versionInfo53 := packageSpec workingCopy ancestry ancestors first.
	self assertProject: foo expectedVersionString: '3.0' expectedFidelity: #allLoadedToSpec.

	gofer
		version: 'GoferBeau-dkh.25'; 
		load.
	self assertProject: foo expectedVersionString: '2.0' expectedFidelity: #allLoadedToSpec.

	"set up Issue 118 conditions ... simulate a merge of GoferBeau-dkh.53 by adding versionInfo as ancestor"
	packageSpec := version packageNamed: 'GoferBeau'.
	wc := packageSpec workingCopy.
	wc ancestry addAncestor: versionInfo53.
	self assertProject: foo expectedVersionString: '3.0' expectedFidelity: #allLoadedToSpec.
