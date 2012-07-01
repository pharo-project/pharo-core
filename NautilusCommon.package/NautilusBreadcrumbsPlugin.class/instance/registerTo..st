registration
registerTo: aModel

	aModel announcer
		on: NautilusPackageSelected send: #packageSelected: to: self;
		on: NautilusGroupSelected send: #groupSelected: to: self;
		on: NautilusClassSelected send: #classSelected: to: self;
		on: NautilusProtocolSelected send: #protocolSelected: to: self;
		on: NautilusMethodSelected send: #methodSelected: to: self;
		on: NautilusShowGroupsChanged send: #showGroupsChanged: to: self.