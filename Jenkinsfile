pipeline {
     agent any
     stages {
          stage("Compile") {
               steps {
                    sh "./mvnw compile"
               }
          }
          stage("Unit test") {
               steps {
                    sh "./mvnw test"
               }
          }
          stage("Package") {
     		   steps {
          			sh "./mvnw package"
     			}
		  }
		  stage("Docker build") {
     			steps {
          			sh "docker build -t ederpbrito/calculator ."
     			}
		  }
		  stage("Docker push") {
     			steps {
          			sh "docker push leszko/calculator"
     			}
		  }
		  stage("Deploy to staging") {
     			steps {
          			sh "docker run -d --rm -p 8765:8080 --name calculator leszko/calculator"
     			}
		  }
		  stage("Acceptance test") {
     			steps {
          			sleep 60
          			sh "chmod +x Testapplication_up.sh && ./Testapplication_up.sh"
     	  		}
		  }
     }
     post {
     	always {
          sh "docker stop calculator"
     	}
	}
}