Gomobile Hello World project
=============
[![GitHub issues](https://img.shields.io/github/issues/Magrath/gomobile-HelloWorld.svg)](https://github.com/Magrath/gomobile-HelloWorld/issues)
[![GitHub stars](https://img.shields.io/github/stars/Magrath/gomobile-HelloWorld.svg)](https://github.com/Magrath/gomobile-HelloWorld/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/Magrath/gomobile-HelloWorld.svg)](https://github.com/Magrath/gomobile-HelloWorld/network)
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://github.com/Magrath/gomobile-HelloWorld/blob/master/LICENSE)

### Requirements
* Homebrew
* Go >= 1.5rc1
* Xcode >= 6.4
* You need to have a valid iOS development certificate installed.

### Build
```
git clone https://github.com/Magrath/gomobile-HelloWorld
cd gomobile-HelloWorld
make init && make build
```

### Run
To run a program on an iDevice, first make sure you have a valid developer
certificate and have setup your iDevice properly to run apps signed by your
developer certificate.
```
make deploy
```

### Reference
* https://godoc.org/golang.org/x/mobile/cmd/gomobile
* https://go-review.googlesource.com/#/c/2127/7/misc/ios/README
* https://medium.com/using-go-in-mobile-apps/using-go-in-mobile-apps-part-2-building-an-ios-app-with-go-build-eb1fc3b56c99
