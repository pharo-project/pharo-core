testBaseline20
  "https://code.google.com/p/metacello/issues/detail?id=108"

  | wc project loader |
  project := self class new project.
  loader := project load: '2.0-baseline'.
  wc := (GoferVersionReference name: 'GoferBar.gemstone') workingCopy.
  self assert: wc ancestry ancestors first name = 'GoferBar.gemstone-dkh.70'