hostname
ls
if [ -d hello-world-war ]
then
rm -rf *
fi
git clone https://github.com/nikhilpatil027/hello-world-war.git
cd hello-world-war
mvn clean package
