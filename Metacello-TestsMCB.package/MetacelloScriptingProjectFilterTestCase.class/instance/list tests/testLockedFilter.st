testLockedFilter
  | validationBlock |
  validationBlock := [ :expected | 
  | result |
  result := Metacello registry locked collect: [ :each | each name ].
  self assert: result size = expected size.
  expected do: [ :name | self assert: (result includes: name) ] ].
  validationBlock value: #().
  Metacello new
    baseline: #('GithubRefIV');
    repository: 'filetree://' , externalDirectory fullName;
    lock.
  Metacello new
    configuration: 'Issue32';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    lock.
  validationBlock value: #('GithubRefIV' 'Issue32')