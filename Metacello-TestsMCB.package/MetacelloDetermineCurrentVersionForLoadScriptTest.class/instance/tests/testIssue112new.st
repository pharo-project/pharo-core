testIssue112new
  | wc |
  Metacello new
    project: 'Foo';
    version: '3.0';
    className: 'MetacelloTestConfigurationOfFoo';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    load: #('GoferBar' 'GoferFaux').
  wc := (GoferPackageReference name: 'GoferBar') workingCopy.
  self assert: wc ancestry ancestors first name = 'GoferBar.branch-lr.1'.
  wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
  self assert: wc ancestry ancestors first name = 'GoferFaux-tg.30'.
  self
    should: [ (GoferPackageReference name: 'GoferBeau') workingCopy ]
    raise: Error.
  Metacello new
    project: 'Foo';
    version: '3.5';
    className: 'MetacelloTestConfigurationOfFoo';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    load: #('GoferBeau').
  wc := (GoferPackageReference name: 'GoferBar') workingCopy.
  self assert: wc ancestry ancestors first name = 'GoferBar-lr.1'.
  wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
  self assert: wc ancestry ancestors first name = 'GoferBeau-dkh.54'.
  wc := (GoferPackageReference name: 'GoferFaux') workingCopy.	"this is the crux of Issue 112"
  self assert: wc ancestry ancestors first name = 'GoferFaux-tg.31'