pipeline {
     agent any
     stages {
          stage("Compile") {
               steps {
                    sh "/usr/bin/mvn compile"
               }
          }
          stage("Unit test") {
               steps {
                    sh "/usr/bin/mvn test"
               }
          }
     
    
stage("Package") {
     steps {
          sh "/usr/bin/mvn build"
     }
}
stage("Docker build") {
     steps {
      
          sh "docker build -t deepak_tomcat ."
     }
}

stage("Deploy to staging") {
     steps {
 
          sh "docker run -d --rm -p 8090:8080 --name Testtocat deepak_tomcat"
     }
}

     }
  post {
     always {
          sh "docker stop calculator_1"
     }
}
}
