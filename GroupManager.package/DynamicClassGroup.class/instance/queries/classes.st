classes

	^ (self elements collect: [:e | e theNonMetaClass]) asSet asArray sort: [:a :b | a name < b name ]