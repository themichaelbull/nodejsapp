pipeline {
    agent any
    stages {
        stage('Cleanup Stage'){
            steps {
                sh "rm -rf *"
                sh "docker rm -f \$(docker ps -aq) || true"
                sh "docker rmi -f \$(docker images) || true"
                sh "docker rm -f \$(docker ps -aq) || true"
                sh "docker rmi -f \$(docker images) || true"
            }
        }
        stage('Clone Repo'){
            steps {
                sh "git clone https://github.com/themichaelbull/nodejsapp"
                sh "cp -r labstretchgoal/* ./"
            }
        }
        stage('Docker Build and Network'){
            steps {
                sh "docker build -t nodejsapp . --no-cache"
            }
        }
        stage('Docker Run'){
            steps {
                sh "docker run -d -p 80:5000 --name nodejsapp nodejsapp nodejsapp"
            }
        }
    }
}
