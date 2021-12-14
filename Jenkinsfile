pipeline{
    agent any
    stages{
        // Get maven homePath
        def mvnHome = tool name: 'apache-maven-3.8.4', type: 'maven'
        stage("Clean"){
            steps{
                bat "${mvnHome}/bin/mvn clean"
            }
        }
        stage("Test"){
            steps{
                bat "${mvnHome}/bin/mvn test"
            }
        }
        stage("Package"){
            steps{
                bat "${mvnHome}/bin/mvn package"
            }
        }
    }
}