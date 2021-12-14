pipeline{
    agent any
    stages{
        // Get maven homePath
        stage("Clean"){
            steps{
                def mvnHome = tool name: 'apache-maven-3.8.4', type: 'maven'
                bat "${mvnHome}/bin/mvn clean"
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