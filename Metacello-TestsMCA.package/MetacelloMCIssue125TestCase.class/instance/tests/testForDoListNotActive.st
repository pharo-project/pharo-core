testForDoListNotActive
  "https://github.com/dalehenrich/metacello-work/issues/125"

  | project version wc |
  project := self projectWith: #().
  version := project version: '3.0'.
  version load.
  {('GoferFoo' -> 'GoferFoo-lr.4').
  ('GoferBar' -> 'GoferBar-jf.1')}
    do: [ :assoc | 
      wc := (GoferPackageReference name: assoc key) workingCopy.
      self assert: wc ancestry ancestors first name = assoc value ]