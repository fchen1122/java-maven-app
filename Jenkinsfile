pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
    stage('Deliver') {
            steps {
                sh 'cd ./jenkins/scripts/ && chmod 775 deliver.sh'
                sh './deliver.sh'
            }
        }
    }
}
