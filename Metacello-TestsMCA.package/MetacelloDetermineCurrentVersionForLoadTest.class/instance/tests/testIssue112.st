testIssue112
  | version foo wc |
  gofer
    package: 'MetacelloTestConfigurationOfFoo';
    load.
  foo := (Smalltalk at: #'MetacelloTestConfigurationOfFoo') new project.
  version := foo version: '3.0'.
  version load: #('GoferBar' 'GoferFaux').
  wc := (GoferPackageReference name: 'GoferBar') workingCopy.
  self assert: wc ancestry ancestors first name = 'GoferBar.branch-lr.1'.
  wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
  self assert: wc ancestry ancestors first name = 'GoferFaux-tg.30'.
  self
    should: [ (GoferPackageReference name: 'GoferBeau') workingCopy ]
    raise: Error.	"A load of GoferBeau for version 3.5, should also load the correct package for GoferFaux (GoferFaux-tg.31)"
  version := foo version: '3.5'.
  version load: 'GoferBeau'.
  wc := (GoferPackageReference name: 'GoferBar') workingCopy.
  self assert: wc ancestry ancestors first name = 'GoferBar-lr.1'.
  wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
  self assert: wc ancestry ancestors first name = 'GoferBeau-dkh.54'.	"this is the crux of Issue 112"
  wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
  self assert: wc ancestry ancestors first name = 'GoferFaux-tg.31'