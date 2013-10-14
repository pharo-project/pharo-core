testIssue185c
  "https://github.com/dalehenrich/metacello-work/issues/185"

  | wc |
  Metacello new
    configuration: 'Issue181';
    version: '0.9.6';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    silently;
    load.
  wc := (GoferPackageReference name: 'ExternalCore') workingCopy.
  self assert: wc ancestry ancestors first name = 'ExternalCore.branch-dkh.1'.
  Metacello new
    configuration: 'Issue181';
    version: '0.9.7';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    silently;
    load.
  wc := (GoferPackageReference name: 'ExternalCore') workingCopy.
  self assert: wc ancestry ancestors first name = 'ExternalCore.branch-dkh.2'