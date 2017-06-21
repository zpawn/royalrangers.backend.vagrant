## Vagrant box for [RoyalRangers API](https://github.com/royalrangers-ck/rr-api)
(Ubuntu 14.04, Java 8, MySQL 5.6)

### First start
1. Create new directory near royalrangers.api
```
│── royalrangers.api
└── royalrangers.api.vagrant
```

2. Go to directory `/royalrangers.api.vagrant`

3. Clone repository `git clone https://github.com/zpawn/royalrangers.backend.vagrant.git ./`

4. Start VM 
```vagrant up```

5. Connect to VM
```vagrant ssh```

6. Install dependencies
```
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
sdk install gradle
gradle -v 
```

7. Run Java Spring Server
```
cd /var/www/royalrangers.api
gradle bootRun
```
