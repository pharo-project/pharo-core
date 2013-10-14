testLatestPackage
  "https://code.google.com/p/metacello/issues/detail?id=108"

  "illustrate different behavior for GoferPackageReference, GoferVersionReference and MetacelloGoferPackage"

  | gofer repositorySpecs aString |
  gofer := Gofer new.
  gofer disablePackageCache.
  gofer repository: (Smalltalk at: self repositoryName).	"GoferPackageReference"
  self
    assert:
      'GoferBar-dkh.70'
        = ((GoferPackageReference name: 'GoferBar') resolveWith: gofer) name.
  self
    should: [ (GoferPackageReference name: 'GoferBar.gemstone') resolveWith: gofer ]
    raise: Error.	"GoferVersionReference"
  self
    should: [ (GoferVersionReference name: 'GoferBar') resolveWith: gofer ]
    raise: Error.
  self
    should: [ (GoferVersionReference name: 'GoferBar.gemstone') resolveWith: gofer ]
    raise: Error.	"MetacelloGoferPackage"
  self
    assert:
      'GoferBar-dkh.70'
        =
          ((MetacelloGoferPackage name: 'GoferBar' packageFilename: 'GoferBar')
            resolveWith: gofer) name.
  self
    assert:
      'GoferBar.gemstone-dkh.70'
        =
          ((MetacelloGoferPackage name: 'GoferBar' packageFilename: 'GoferBar.gemstone')
            resolveWith: gofer) name