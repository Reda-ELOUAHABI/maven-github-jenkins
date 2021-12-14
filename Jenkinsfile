pipeline{
    agent any
     tools{
            maven "apache-maven-3.8.4"
        }
    stages{
        stage('Clean'){
            steps{
                    bat "mvn -Dmaven.test.failure.ignore=true clean"
            }
        }
        stage('Test'){
            steps{
                    bat "mvn -Dmaven.test.failure.ignore=true test"
            }
        }
        stage('Package'){
            steps{
                    bat "mvn -Dmaven.test.failure.ignore=true package"
            }
        }
        stage('Run'){
            steps{
                    bat "java -cp target/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App"
            }
        }
    }
}