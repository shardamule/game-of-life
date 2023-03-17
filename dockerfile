pipeline {
agent {
label {
label "built-in"
customWorkdspace "/mnt/project/"
}
}
stages {
stage ("deploy game-of-life") {
steps {
sh "docker stop server"
sh "docker rm server"
sh "rm -rf /mnt/project/dockerfile"
sh "mvn install"
sh "git clone url"
sh "cp /mnt/project/gameoflife-web/target/gameoflife.war /mnt/project/dockerfile"
sh "docker build -t test:1.0 /mnt/project/dockerfile/"
sh "docker run -itdp 8081:8080 --name server test:1.0
}
}
}
}
