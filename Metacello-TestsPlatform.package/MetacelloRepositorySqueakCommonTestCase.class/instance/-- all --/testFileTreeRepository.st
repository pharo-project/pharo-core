testFileTreeRepository
  "must create repository against an existing directory"

  | project pkg repoSpec repo fileUtils workingDir tempDir repoDir |
  fileUtils := MCFileTreeFileUtils current.
  workingDir := fileUtils default.
  tempDir := fileUtils directoryFromPath: 'temp' relativeTo: workingDir.
  [ 
  fileUtils ensureDirectoryExists: tempDir.
  repoDir := fileUtils directoryFromPath: 'repo' relativeTo: tempDir.
  fileUtils ensureDirectoryExists: repoDir.
  project := self project.
  pkg := (project version: '1.6-baseline') packageNamed: 'Example-Core'.
  repoSpec := pkg repositorySpecs first.
  self assert: repoSpec type = 'filetree'.
  repo := repoSpec createRepository.
  self
    assert: repo class == (Smalltalk at: #'MCFileTreeRepository' ifAbsent: [  ]).
  self
    assert:
      repo description equals: ('filetree://' , (fileUtils default fullName , '/temp/repo') asFileReference fullName )]
    ensure: [ 
      (fileUtils directoryExists: tempDir)
        ifTrue: [ fileUtils deleteAll: tempDir ] ]

