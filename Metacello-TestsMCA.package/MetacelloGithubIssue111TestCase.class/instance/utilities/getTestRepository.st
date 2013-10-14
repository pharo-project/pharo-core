getTestRepository
    | repo |
    repo := MCFileTreeRepository new directory: self getTestRepositoryDirectory.
    ^ MCRepositoryGroup default repositories detect: [ :each | each = repo ] ifNone: [ repo ]