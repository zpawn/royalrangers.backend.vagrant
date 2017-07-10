#!/bin/bash

echo ">>> Install dependencies"
sudo apt-get update -y > /dev/null
sudo apt-get install -y zip
sudo apt-get install -y unzip

echo ">>> reset mysql root password"

user=debian-sys-maint
password=root1pass
mysql --user="$user" --password="$password" --execute="
    use mysql;
    update user set Password=PASSWORD('root') where User='root';
    flush privileges;
    quit
"

#echo ">>> Install SDK"
#curl -s "https://get.sdkman.io" | bash
#source "$HOME/.sdkman/bin/sdkman-init.sh"
#
#echo ">>> SDK version"
#sdk version
#
#echo ">>> Install gradle"
#sdk install gradle
#
#echo ">>> Gradle version"
#gradle -v
