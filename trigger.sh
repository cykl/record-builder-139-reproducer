#! /bin/bash -xe

git co .
mvn clean compile
sed -i 's/10/11/'  src/main/java/Main.java 
rm target/maven-status/maven-compiler-plugin/compile/default-compile/createdFiles.lst
mvn compile
