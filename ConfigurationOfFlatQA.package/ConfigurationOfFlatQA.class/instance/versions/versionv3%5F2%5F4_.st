versionv3_2_4: spec
<version: 'v3.2.4'>
spec for: #common do: [
spec blessing: #release;
repository: 'http://smalltalkhub.com/mc/YuriyTymchuk/ScrapYard/main/'.
spec
	package: 'Renraku' with: 'Renraku-YuriyTymchuk.131';
	package: 'Renraku-Test' with: 'Renraku-Test-YuriyTymchuk.21';
	package: 'Renraku-Help' with: 'Renraku-Help-YuriyTymchuk.2';
	package: 'QualityAssistant' with: 'QualityAssistant-YuriyTymchuk.107';
	package: 'QualityAssistantRecording' with: 'QualityAssistantRecording-YuriyTymchuk.24';
	package: 'QualityAssistant-Test' with: 'QualityAssistant-Test-YuriyTymchuk.2'.
spec postLoadDoIt: #postload ]