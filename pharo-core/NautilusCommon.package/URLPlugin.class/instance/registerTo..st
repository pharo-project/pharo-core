registration
registerTo: aModel

	aModel announcer
		on: NautilusPackageSelected send: #changed: to: self;
		on: NautilusClassSelected send: #changed: to: self;
		on: NautilusGroupSelected send: #changed: to: self;
		on: NautilusProtocolSelected send: #changed: to: self;
		on: NautilusMethodSelected send: #changed: to: self;
		on: NautilusShowGroupsChanged send: #changed: to: self.