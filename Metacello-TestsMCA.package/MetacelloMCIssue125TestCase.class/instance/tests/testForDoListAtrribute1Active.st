testForDoListAtrribute1Active
  "https://github.com/dalehenrich/metacello-work/issues/125"

  | project version wc |
  project := self projectWith: #(#'attribute1').
  version := project version: '3.0'.
  version load.
  {('GoferFoo' -> 'GoferFoo-lr.4').
  ('GoferBar' -> 'GoferBar-jf.1').
  ('GoferFaux' -> 'GoferFaux-tg.32').
  ('GoferBeau' -> 'GoferBeau-dkh.55')}
    do: [ :assoc | 
      wc := (GoferPackageReference name: assoc key) workingCopy.
      self assert: wc ancestry ancestors first name = assoc value ]