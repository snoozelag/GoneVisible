# GoneVisible

[![Platform](http://img.shields.io/badge/platform-ios-blue.svg?style=flat
)](https://developer.apple.com/iphone/index.action)
[![Language](http://img.shields.io/badge/language-swift-brightgreen.svg?style=flat
)](https://developer.apple.com/swift)
[![License](http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat
)](http://mit-license.org)
[![Twitter](https://img.shields.io/badge/twitter-@snoozelag-blue.svg?style=flat)](http://twitter.com/snoozelag)

**GoneVisible is a UIView extension that uses AutoLayout to add "gone" state like Android.**  

You can easily change the size constraint constant of UIView to 0 without adding IBOutlet property of size constraint. GoneVisible supports iOS and is written in Swift.  
　  
　  
![](demo.gif)

## Requirements ##
* Swift 3.0
* iOS 8.0+
* Xcode 8

## Installation ##
#### Manual ####
Simply drag `UIView+GoneVisible.swift` into your project.

#### Cocoapods ####
- Add into your Podfile.

```:Podfile
pod "GoneVisible"
```

Then `$ pod install`
- Add `import GoneVisible` to the top of your files where you wish to use it.

## Usage ##

・Gone.
```swift
view.gone()
```

・Visible.
```swift
view.visible()
```

・When setting to Gone, set the space constraint constant together to 0.
```swift
view.gone(spaces: [.trailing])
```

・With "gone" you can specify whether it is vertical or horizontal. It is useful when animating.
```swift
view.gone(axis: .vertical)
```

##### See also:  
- [:link: iOS Example Project](https://github.com/snoozelag/GoneVisible/tree/master/Example/GoneVisibleExample)
  
## Author

Teruto Yamasaki, y.teruto@gmail.com

## License ##
  
The MIT License (MIT)  
See the LICENSE file for more info.  
