![](https://img.shields.io/badge/build-pass-brightgreen.svg?style=flat-square)
![](https://img.shields.io/badge/platform-WatchOS2-ff69b4.svg?style=flat-square)
![](https://img.shields.io/badge/Require-XCode7-lightgrey.svg?style=flat-square)


# WatchOS2-NewUI-PickerList-Example
WatchOS 2 Experiments - New UI Components - Picker List

## Example

![](https://raw.githubusercontent.com/Sweefties/WatchOS2-NewUI-PickerList-Example/master/source/Apple_Watch_template-PickerList.jpg)

## Requirements

- >= XCode 7 beta 5~.
- >= Swift 2.

Tested on WatchOS2 Simulator.

## Important

Get the `master` branch for XCode 8 / Swift 3 updated project.

## Usage

To run the example project, clone the repo.

### Extra Simple!

```swift
for i in 0...15 {
    let item = WKPickerItem()
    item.title = "\(object[i])"
    pickerItems.append(item)
}
self.pickerList.setItems(pickerItems)
```
