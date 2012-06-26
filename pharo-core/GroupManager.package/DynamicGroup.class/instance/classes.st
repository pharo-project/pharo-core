queries
classes

	^ (self methods collect: [:e | e methodClass theNonMetaClass]) asSet asArray sort: [:a :b | a name < b name ]