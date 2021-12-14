pipeline{
    agent any
    stages{
        // Get maven homePath
        // stage('SCM checkout'){
        //     git 'https://github.com/Reda-ELOUAHABI/maven-github-jenkins'
        // }
        stage('Clean'){
            steps{
                script{
                        def mvnHome = tool name: 'apache-maven-3.8.4', type: 'maven'
                }
 
                   "${mvnHome}/bin/mvn clean"
            }
        }
        stage("Test"){
            steps{
                  script{
                        def mvnHome = tool name: 'apache-maven-3.8.4', type: 'maven'
                }
 
                    bat "${mvnHome}/bin/mvn test"
            }
        }
        stage("Package"){
            steps{
                script{
                    def mvnHome = tool name: 'apache-maven-3.8.4', type: 'maven'
                    }
                bat "${mvnHome}/bin/mvn package"
            }
        }
    }
}