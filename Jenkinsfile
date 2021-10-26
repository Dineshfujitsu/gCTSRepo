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
      host: 'https://192.140.0.4:8444',
      client: '100',
      abapCredentialsId: 'ABAPUserPasswordCredentialsId',
      repository: 'gitRepo',
      remoteRepositoryURL: "https://github.com/Dineshfujitsu/gCTSRepo.git",
      role: 'SOURCE',
      vSID: 'S4D',
      branch: 'main',
      scope: 'LASTACTION',
      rollback: false,
      verbose: true,
      configuration: [VCS_AUTOMATIC_PULL: 'FALSE',VCS_AUTOMATIC_PUSH: 'FALSE',CLIENT_VCS_LOGLVL: 'debug'] 
    )
  }    
}
