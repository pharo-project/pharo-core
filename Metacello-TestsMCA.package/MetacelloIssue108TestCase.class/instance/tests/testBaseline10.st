testBaseline10
  "https://code.google.com/p/metacello/issues/detail?id=108"

  | wc project loader |
  project := self class new project.
  loader := project load: '1.0-baseline'.
  wc := (GoferPackageReference name: 'GoferBar') workingCopy.
  self assert: wc ancestry ancestors first name = 'GoferBar-dkh.70'