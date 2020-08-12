# Prov Scripts

## Desktop-Linux

Provisioning script for a new linux desktop OS install. Currently working on Ubuntu (not tested on Fedora).

Download the 'configs' folder (https://github.com/th3cookie/sysadmin_scripts/tree/master/bash/prov/Desktop-Linux/configs) containing all config files, in the same directory as the prov_script.sh using one of the following methods:

1. [Mozilla Addon](https://addons.mozilla.org/en-US/firefox/addon/gitzip/)
2. [GitZip website](http://kinolien.github.io/gitzip/)
3. [DownGit](https://minhaskamal.github.io/DownGit/#/home)

Make sure the 'configs' folder is in the same directory as the prov script. It will not end well if it isn't there.

Download and run the prov script:

```
wget -O ~/prov.sh https://raw.githubusercontent.com/th3cookie/sysadmin_scripts/master/bash/prov/Desktop-Linux/prov_script.sh
chmod +x ~/prov.sh
~/prov.sh
```