cho "start the process"
ls
cp /temp/shared/java.tar.gz /opt
cp /temp/shared/maven.tar.gz /opt

echo "copying a file to another place - 2. step complete"
cd /opt

echo "extract it with tar - 3. step complete"

sudo tar zxvf java.tar.gz
sudo tar xzvf maven.tar.gz

echo "time to install it."
update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_45/bin/java 100
update-alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_45/bin/javac 100
sudo update-alternatives --install /usr/bin/mvn maven /opt/apache-maven-3.5.3/bin/mvn 1001

mvn -v


wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c "echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list"
sudo apt-get update
sudo apt-get install -y jenkins


apt-get install git -y