//
//  main.m
//  PixateAssociatedObjects
//
//  Created by Nikita Leonov on 6/21/14.
//  Copyright (c) 2014 Nikita Leonov. All rights reserved.
//

#import <UIKit/UIKit.h>

#ifdef PIXATE
    #import <PixateFreestyle/PixateFreestyle.h>
#endif

#import "NLAppDelegate.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
#ifdef PIXATE
        [PixateFreestyle initializePixateFreestyle];
#endif
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([NLAppDelegate class]));
    }
}
