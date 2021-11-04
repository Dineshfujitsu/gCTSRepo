library('piper-lib-os') _

stage('Deploy') {
  node {
    gctsDeploy(
      script: this,
      host: 'http://hana4poc.zwtkfpvhnzsehekvcftg5kfdud.rx.internal.cloudapp.net:8001',
      client: '100',
      abapCredentialsId: 'ABAPUserPasswordCredentialsId2',
      repository: 'dineshfujitsu-gctsrepo',
      remoteRepositoryURL: 'https://github.com/Dineshfujitsu/gCTSRepo.git',
      role: 'TARGET',
      vSID: 'S4D',
      branch: 'main',
      scope: 'LASTACTION',
      rollback: true
    )
  }    
}
