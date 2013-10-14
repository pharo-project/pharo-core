hasNoLoadConflicts: anMCGitHubRepository
  (anMCGitHubRepository isKindOf: self class)
    ifFalse: [ ^ false ].
  ^ self projectPath = anMCGitHubRepository projectPath
    and: [ self repoPath = anMCGitHubRepository repoPath ]