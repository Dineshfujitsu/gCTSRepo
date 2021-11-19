@Library('piper-lib-os') _

node() {
	stage('Deploy') {
		gctsDeploy(
			script: this,
			host: 'http://hana4poc.zwtkfpvhnzsehekvcftg5kfdud.rx.internal.cloudapp.net:8002',
			client: '100',
			abapCredentialsId: 'ABAPUserPasswordCredentialsId',
			repository: 'dineshfujitsu-gctsrepo',
			remoteRepositoryURL: 'https://github.com/Dineshfujitsu/gCTSRepo.git',
			role: 'TARGET',
			vSID: 'S4D',
			configuration: [VCS_AUTOMATIC_PULL: 'FALSE',VCS_AUTOMATIC_PUSH: 'FALSE',CLIENT_VCS_LOGLVL: 'debug']
		)
	}
  
	stage('Unit Tests') {
		gctsExecuteABAPUnitTests(
			script: this,
			host: 'http://hana4poc.zwtkfpvhnzsehekvcftg5kfdud.rx.internal.cloudapp.net:8002',
			client: '100',
			abapCredentialsId: 'ABAPUserPasswordCredentialsId',
			repository: 'dineshfujitsu-gctsrepo',
		)
	}     	
}
