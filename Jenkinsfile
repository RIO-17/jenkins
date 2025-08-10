pipeline {
    agent { 
        node {
            label 'docker-agent-python' // Specifies the agent label for the pipeline
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
                cd myapp
                pip install -r requirements.txt
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                echo "doing test stuff.."
                '''
                python3 hello.py
                python3 hello.py --name=Brad
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