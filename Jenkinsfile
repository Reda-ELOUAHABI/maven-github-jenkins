pipeline{
    agent any
    stages{
        // Get maven homePath
        // stage('SCM checkout'){
        //     git 'https://github.com/Reda-ELOUAHABI/maven-github-jenkins'
        // }
        stage('Clean'){
            steps{
                bat 'mvn clean'
            }
        }
        stage("Test"){
            steps{
                def mvnHome = tool name: 'apache-maven-3.8.4', type: 'maven'
                    bat "${mvnHome}/bin/mvn test"
            }
        }
        stage("Package"){
            steps{
                def mvnHome = tool name: 'apache-maven-3.8.4', type: 'maven'
                bat "${mvnHome}/bin/mvn package"
            }
        }
    }
}