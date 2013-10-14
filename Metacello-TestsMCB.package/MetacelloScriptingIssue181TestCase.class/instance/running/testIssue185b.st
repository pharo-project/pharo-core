testIssue185b
  "https://github.com/dalehenrich/metacello-work/issues/185"

  | wc |
  Metacello new
    configuration: 'Issue181';
    version: '0.9.4';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    silently;
    load.
  wc := (GoferPackageReference name: 'External-Core') workingCopy.
  self assert: wc ancestry ancestors first name = 'External-Core.branch-dkh.8'.
  Metacello new
    configuration: 'Issue181';
    version: '0.9.5';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    silently;
    load.
  wc := (GoferPackageReference name: 'External-Core') workingCopy.
  self assert: wc ancestry ancestors first name = 'External-Core.branch-dkh.9'