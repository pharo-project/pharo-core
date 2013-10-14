testIssue49PartialLoadA
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
    raise: Error