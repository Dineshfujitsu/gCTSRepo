library('piper-lib-os') _

stage('Deploy') {
  node {
    gctsDeploy(
      script: this,
      host: 'http://hana4poc.zwtkfpvhnzsehekvcftg5kfdud.rx.internal.cloudapp.net:8002',
      client: '100',
      abapCredentialsId: 'ABAPUserPasswordCredentialsId',
      repository: 'dineshfujitsu-gctsrepo',
      remoteRepositoryURL: 'https://github.com/Dineshfujitsu/gCTSRepo.git',
      role: 'TARGET',
      vSID: 'S4D',
      branch: 'main',
      commit: 'ed44fd9',
      scope: 'CRNTCOMMIT',
      rollback: true
    )
  }    
}

stage('Execute Unit Tests') {
  node { 
    gctsExecuteABAPUnitTests(
      script: this,
      host: 'http://hana4poc.zwtkfpvhnzsehekvcftg5kfdud.rx.internal.cloudapp.net:8002',
      client: '100',
      abapCredentialsId: 'ABAPUserPasswordCredentialsId',
      repository: 'dineshfujitsu-gctsrepo',
    )
  }    
}

stage('Rollback') {
  node { 
    gctsRollback(
      script: this,
      host: 'http://hana4poc.zwtkfpvhnzsehekvcftg5kfdud.rx.internal.cloudapp.net:8002',
      client: '100',
      abapCredentialsId: 'ABAPUserPasswordCredentialsId',
      repository: 'dineshfujitsu-gctsrepo',
    )
  }    
}
