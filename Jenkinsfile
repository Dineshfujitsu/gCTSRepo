library('piper-lib-os') _

stage('Deploy') {
  node {
    gctsDeploy(
      script: this,
      host: 'http://hana4poc.zwtkfpvhnzsehekvcftg5kfdud.rx.internal.cloudapp.net:8002',
      client: '000',
      abapCredentialsId: 'ABAPUserPasswordCredentialsId',
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
