pipeline {
    agent any
 //   {
 //      docker {
 //          image 'maven:3-alpine'
 //           args '-v /root/.m2:/root/.m2'
 //       }
 //   }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Deliver') {
            steps {
                 sh './jenkins/scripts/deliver.sh'
            }
        }
            stages {
        stage('Input') {
            steps {
                input('Do you want to proceed?')
            }
        }

        stage('If Proceed is clicked') {
            steps {
                print('hello')
            }
        }
    }
    }
}
