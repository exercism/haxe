Full instructions for installing Haxe on Windows, OS X, or Linux, can be found
in the [official installation instructions](https://haxe.org/download/).

The Haxe language track requires that you have the following software installed
on your system:
* [Haxelib](https://haxe.org/download/) (to run programs)
* [Munit](https://github.com/massiveinteractive/MassiveUnit) (for testing)

## Installing Haxelib

#### Ubuntu
```shell
sudo add-apt-repository ppa:haxe/releases -y
sudo apt-get update
sudo apt-get install haxe -y
mkdir ~/haxelib && haxelib setup ~/haxelib
```

#### Debian
```shell
sudo apt-get install haxe -y
mkdir ~/haxelib && haxelib setup ~/haxelib
```

#### Fedora
```shell
sudo dnf install haxe -y
mkdir ~/haxelib && haxelib setup ~/haxelib
```

#### openSUSE
```shell
sudo zypper install haxe
mkdir ~/haxelib && haxelib setup ~/haxelib
```

#### Arch Linux
```shell
sudo pacman -S haxe
mkdir ~/haxelib && haxelib setup ~/haxelib
```

#### MacOS & Windows
Official installers and binaries fir Windows and MacOS are on the [Haxe website](https://haxe.org/download/).


## Installing Munit

#### All Systems
Once haxelib is installed:
```shell
haxelib install munit
```
