@Library('piper-lib-os') _

node() {
  stage('Deploy') {
    gctsDeploy(
      script: this,
      host: 'http://sap-linux.uw3eayeimf1uvkax5xugm5s5da.rx.internal.cloudapp.net:8000',
      client: '100',
      abapCredentialsId: 'ABAPUserPasswordCredentialsId',
      repository: 'dineshfujitsu-gctsrepo',
      remoteRepositoryURL: 'https://github.com/Dineshfujitsu/gCTSRepo.git',
      role: 'TARGET',
      vSID: 'ZE4',
      configuration: [VCS_AUTOMATIC_PULL: 'FALSE',VCS_AUTOMATIC_PUSH: 'FALSE',CLIENT_VCS_LOGLVL: 'debug']
    )
  }
  
  stage('Unit Tests') {
    gctsExecuteABAPUnitTests(
      script: this,
      host: 'https://SAP-LINUX.uw3eayeimf1uvkax5xugm5s5da.rx.internal.cloudapp.net:44302',
      client: '100',
      abapCredentialsId: 'ABAPUserPasswordCredentialsId',
      repository: 'dineshfujitsu-gctsrepo',
    )
  }     
}
