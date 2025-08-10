pipeline {
    agent { 
        node {
            label 'jenkins-agent-goes-here'
            }
      }
    triggers {
        pollSCM 'H/5 * * * *' // Polls SCM every 5 minutes
    }
    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                echo "doing build stuff.."
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                echo "doing test stuff.."
                '''
            }
        }
        stage('Deliver') {
            steps {
                echo 'Deliver....'
                sh '''
                echo "doing delivery stuff.."
                '''
            }
        }
    }
}