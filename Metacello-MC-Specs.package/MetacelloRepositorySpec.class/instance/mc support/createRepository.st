createRepository
    | repo |
    repo := self project createRepository: self.
    ^ MCRepositoryGroup default repositories detect: [ :each | each = repo ] ifNone: [ repo ]