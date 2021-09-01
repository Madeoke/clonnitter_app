#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/clonnitter.pem \
    target/clonnitter-1.0-SNAPSHOT.jar \
    ec2-user@ec2-18-192-37-172.eu-central-1.compute.amazonaws.com:/home/ec2-user/

echo 'Restart server...'

ssh -i ~/.ssh/clonnitter.pem ec2-user@ec2-18-192-37-172.eu-central-1.compute.amazonaws.com << EOF
pgrep java | xargs kill -9
nohup java -jar clonnitter-1.0-SNAPSHOT.jar > log.txt &
EOF

echo 'Bye'