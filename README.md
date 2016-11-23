# BTQuickApp

A Simplest &amp; quickest way to create an App with Side menu &amp; Home screen. 

<p align="center">
  <img src="https://github.com/balram3429/BTQuickApp/blob/master/BTQuickApp/Icons/Icon-98@2x.png" width="196"/>
</p>

[BTQuickApp](https://github.com/balram3429/BTQuickApp) uses [LGSideMenuController](https://github.com/Friend-LGA/LGSideMenuController) underneath, to create the Menu & acts as a wrapper to generate an App quickly. You just need to pass the class name of your HomeScreen & pass few sideMenu classes & you are done. :+1:

<p align="center">
  <img src="https://github.com/balram3429/BTQuickApp/blob/master/BTQuickApp/Icons/HomeScreen.PNG" width="250"/>
  <img src="https://github.com/balram3429/BTQuickApp/blob/master/BTQuickApp/Icons/SideMenu.PNG" width="250"/>
  
</p>

## Requirements
* Xcode 5 or higher
* Apple LLVM compiler
* iOS 7.1 or higher
* ARC

## Demo
Build and run the `BTQuickApp` project in Xcode to see `BTQuickApp` in action.

## Installation
  1. Drag the complete folder `BTQuickAppFiles` to your project. 
  2. Maken an import statement for the file as `#import "BTQuickAppController.h"` in your AppDelegate.
  3. Add to your project the `QuartzCore framework` make an import statement for it.
  4. Create few classes / ViewControllers that you need to have in oyur app like Home, dashboard, settings, search etc, etc.

## Initialization
  1. Initialize the object of `BTQuickAppController` in `AppDelegate` class in method `- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions`
  
  ```ObjectiveC
  BTQuickAppController *controller = [[BTQuickAppController alloc]init];
  ```
  
  2. Create array of the classes / viewcontrolelrs & titles you wish you provide.
  3. Add the homeScreen class name & pass the array from `step2` like below & assign it to the root view controller of the window.
  
  ```ObjectiveC
  self.window.rootViewController = [controller createAppWithSideMenuItemsTitle:[@"Item1", @"Item2", @"Item3", @"Item4"]
                                                          andSideMenuItemClass:[@"DemoSideMenuOne", @"DemoSideMenuTwo", @"DemoSideMenuThree", @"DemoSideMenuFour"]
                                                                 andHomeScreen:@"DemoHomeViewController"];
  ```
  
## Contact

- tiwari.balram@gmail.com
- <A HREF = "http://stackoverflow.com/users/1307844/balram-tiwari"> @stackOverflow </a>
- <a href = "https://itunes.apple.com/us/artist/balram-tiwari/id693049567"> @Apps Store </a>

## License

BTQuickApp is available under the MIT license.

Copyright © 2016 Balram Tiwari.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
