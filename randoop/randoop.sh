cd ../
mvn package -Dmaven.test.skip=true
cd target/classes
java -classpath ${RANDOOP_JAR}: randoop.main.Main gentests --classlist=$(git rev-parse --show-toplevel)/randoop/myclasses.txt --time-limit=60 --unchecked-exception=ERROR --checked-exception=ERROR
javac -classpath .:$JUNITPATH ErrorTest*.java 
javac -classpath .:$JUNITPATH RegressionTest*.java
