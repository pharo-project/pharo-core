testIssue49PartialLoadC
  | project version wc |
  project := self project.
  version := project version: '4.0'.
  version load: '1'.
  wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
  self assert: wc ancestry ancestors first name = 'GoferFoo-lr.1'.
  wc := (GoferPackageReference name: 'GoferBar') workingCopy.
  self assert: wc ancestry ancestors first name = 'GoferBar-lr.1'.
  self
    should: [ (GoferPackageReference name: 'GoferFaux') workingCopy ]
    raise: Error.
  self
    should: [ (GoferPackageReference name: 'GoferBeau') workingCopy ]
    raise: Error.
  version := project version: '5.0'.
  version load: '2'.
  wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
  self assert: wc ancestry ancestors first name = 'GoferFoo-lr.2'.
  wc := (GoferPackageReference name: 'GoferBar') workingCopy.
  self assert: wc ancestry ancestors first name = 'GoferBar-lr.1'.
  wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
  self assert: wc ancestry ancestors first name = 'GoferFaux-tg.34'.
  self
    should: [ (GoferPackageReference name: 'GoferBeau') workingCopy ]
    raise: Error