testProjectRef14
    | project version string |
    project := self projectRefProject.
    version := project version: '1.4'.
    self shouldnt: [ version packages ] raise: Error.
    self shouldnt: [ version projects ] raise: Error.
    self shouldnt: [ version groups ] raise: Error.
    string := (version packageNamed: 'Project-Core') printString.
    self
        assert:
            string
                =
                    'spec 
	name: ''Project-Core'';
	requires: #(''Example Default'' );
	includes: #(''Project-Extra'' );
	file: ''Project-Core-anon.2''.'.
    string := (version packageNamed: 'Example Default') printString.
    self
        assert:
            string
                =
                    'spec 
	name: ''Example Default'';
	className: ''MetacelloTutorialConfig'';
	versionString: ''1.3'';
	loads: #(''default'' );
	file: ''Metacello-Tutorial'';
	repository: ''http://seaside.gemstone.com/ss/metacello''.'.
    string := (version packageNamed: 'Core') printString.
    self
        assert:
            string
                =
                    'spec 
	name: ''Core'';
	includes: #(''default'' ).'.
    self shouldnt: [ (version packageNamed: 'Project-Core') requires ] raise: Error.
    self assert: ((version packageNamed: 'Example Default') repositoryDescriptions) asArray = #('http://seaside.gemstone.com/ss/metacello').
    self shouldnt: [ (version packageNamed: 'default') requires ] raise: Error.
    self shouldnt: [ version packagesForSpecNamed: 'Core' ] raise: Error.
    self shouldnt: [ version load: 'Core' ] raise: Error.
    self shouldnt: [ version allPackagesForSpecNamed: 'Core' ] raise: Error.
    self shouldnt: [ version load: 'Example Default' ] raise: Error.
    self shouldnt: [ version allPackagesForSpecNamed: 'Example Default' ] raise: Error.
    self shouldnt: [ (version packageNamed: 'Example Default') version ] raise: Error