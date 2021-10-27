library('piper-lib-os') _

stage('Prepare') {
  node {
    deleteDir()
    checkout scm
    setupCommonPipelineEnvironment script:this    
  }
}  
  
stage('Build') {

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
