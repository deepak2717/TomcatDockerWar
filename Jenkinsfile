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
      
          sh "docker build -t nikhilnidhi/calculator_1 ."
     }
}
stage("Docker push") {
     steps {
   sh "docker login -u username -p password"
sh "docker push nikhilnidhi/calculator_1"
     }
}
stage("Deploy to staging") {
     steps {
 
          sh "docker run -d --rm -p 8765:8080 --name calculator_1 nikhilnidhi/calculator_1"
     }
}
stage("Acceptance test") {
     steps {
          sleep 60
          sh "./acceptance_test.sh"
     }
}
     }
  post {
     always {
          sh "docker stop calculator_1"
     }
}
}
