@Library('common-lib@1.6') _
pipeline {
  agent any;
  environment {
    DOCKER_REPO = 'kyberorg/redirector'
  }
  parameters {
    string(name: 'DOCKER_TAG', defaultValue: "")
  }
  stages {
    stage('Docker') {
      steps {
        script {
          def dockerTag = params.DOCKER_TAG;
          if(dockerTag.trim().equals("")) {
            dockerTag = env.BRANCH_NAME;
          }

          def tags = [];
          tags << dockerTag;

          dockerBuild(repo: env.DOCKER_REPO, tags: tags);
          dockerLogin(creds: 'hub-docker');
          dockerPush();
          dockerLogout();
          dockerClean();

        }
      }
    }
  }
  post {
    always {
      chuckNorris();
      cleanWs();
    }
  }
}
