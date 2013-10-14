test001
    | version foo fan wc |
    gofer
        package: 'MetacelloTestConfigurationOfFan';
        package: 'MetacelloTestConfigurationOfFoo';
        load.
    fan := (Smalltalk at: #'MetacelloTestConfigurationOfFan') new project.
    foo := (Smalltalk at: #'MetacelloTestConfigurationOfFoo') new project.
    version := foo version: '3.0'.
    version load: #('GoferBar' 'GoferFaux').	"When we load version 2.0 of fan, we recognize that '3.0' of foo is the currentVersion (#allLoadedToSpec 
	 or #loadedToSpec and latestVersion), so we load the packages from version 3.0 of foo instead"
    version := fan version: '2.0'.
    version load: 'Foo'.
    wc := (GoferPackageReference name: 'GoferBar') workingCopy.
    self assert: wc ancestry ancestors first name = 'GoferBar.branch-lr.1'.
    wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
    self assert: wc ancestry ancestors first name = 'GoferBeau-dkh.53'.
    wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
    self assert: wc ancestry ancestors first name = 'GoferFaux-tg.30'