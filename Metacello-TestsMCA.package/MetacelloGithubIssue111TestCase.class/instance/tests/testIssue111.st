testIssue111
  "https://github.com/dalehenrich/metacello-work/issues/111"

  "expect record to run without error ... leave potential error unhandled for ease of debugging"

  "use timeout pragma because squeak's default test timeout is too low"

  <timeout: 60>
  | dir repo |
  dir := self getTestRepositoryDirectory.
  dir
    ifNil: [ 
      Transcript
        cr;
        show:
            'skipping MetacelloGithubIssue111TestCase>>test Issue111 because package not installed from FileTree repo'.
      ^ self ].
  self assert: dir exists.
  repo := self getTestRepository.
  Metacello new
    configuration: 'Issue111';
    repository: (repo asRepositorySpecFor: MetacelloMCProject new) description;
    version: '3.1.0';
    silently;
    record