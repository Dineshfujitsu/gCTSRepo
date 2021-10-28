library('piper-lib-os') _

stage('Unit Tests') {
  node {
    gctsExecuteABAPUnitTests(
      script: this,
      host: 'http://hana4poc.zwtkfpvhnzsehekvcftg5kfdud.rx.internal.cloudapp.net:8002',
      client: '000',
      abapCredentialsId: 'ABAPUserPasswordCredentialsId2',
      repository: 'Dineshfujitsu-gCTSRepo'
    )
  }    
}

stage('Deploy Commit') {
  node {
    gctsDeploy(
      script: this,
      host: 'https://hana4poc.zwtkfpvhnzsehekvcftg5kfdud.rx.internal.cloudapp.net:8444',
      client: '100',
      abapCredentialsId: 'ABAPUserPasswordCredentialsId',
      repository: 'Dineshfujitsu-gCTSRepo',
      remoteRepositoryURL: "https://github.com/Dineshfujitsu/gCTSRepo.git",
      role: 'TARGET',
      vSID: 'S4D',
      branch: 'main',
      commit: '9cd4553',
      scope: 'LASTACTION',
      rollback: false,
      verbose: true,
      configuration: [VCS_AUTOMATIC_PULL: 'FALSE',VCS_AUTOMATIC_PUSH: 'FALSE',CLIENT_VCS_LOGLVL: 'debug'] 
    )
  }    
}
