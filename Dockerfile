from java:7

copy src /home/root/javahelloworld/src/
workdir /home/root/javahelloworld
run mkdir bin
run javac -d bin src/HelloWorld.java
run apt-get update && apt-get install -y vim

EntryPoint ["java", "-cp", "bin", "HelloWorld"]
