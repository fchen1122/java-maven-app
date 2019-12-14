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

        stage('User Input - Destination Server Confirm') {
            steps {
                input('Do you want to proceed with deployment to server 10.128.0.5?')
            }
        }

        stage('Deploy after User Confirm') {
            steps {
                 sh 'scp -p /home/justoffit2/deployFolder/*.jar root@centos-node1:/tmp'
            }
        }

    }
}
