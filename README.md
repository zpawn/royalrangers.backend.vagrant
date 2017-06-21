## Vagrant box for [RoyalRangers API](https://github.com/royalrangers-ck/rr-api)
(Ubuntu 14.04, Java 8, MySQL 5.6)

### First start
1. Create new directory near royalrangers.api
```
│── royalrangers.api
└── royalrangers.api.vagrant
```

2. Start VM 
```vagrant up```

3. Connect to vm
```vagrant ssh```

4. Install dependencies
```
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
sdk install gradle
gradle -v 
```

5. Run Java Server
```
cd /var/www/royalrangers.api
gradle bootRun
```
