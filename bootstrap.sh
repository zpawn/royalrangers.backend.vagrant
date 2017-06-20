#!/bin/bash

echo "--==[ Install zip ]==--"
sudo apt-get install zip

echo "--==[ reset mysql root password... ]==--"

user=debian-sys-maint
password=root1pass
mysql --user="$user" --password="$password" --execute="
    use mysql;
    update user set Password=PASSWORD('') where User='root';
    flush privileges;
    quit
"

# echo "--==[ Install SDK ]==--"
# curl -s "https://get.sdkman.io" | bash
# source "$HOME/.sdkman/bin/sdkman-init.sh"

# echo "--==[ SDK version ]==--"
# sdk version

# echo "--==[ Install gradle - build tool ]==--"
# sdk install gradle

# echo "--==[ Gradle version ]==--"
# gradle -v