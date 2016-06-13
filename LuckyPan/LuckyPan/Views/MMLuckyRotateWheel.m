//
//  MMLuckyRotateWheel.m
//  LuckyPan
//
//  Created by Apple on 16/5/26.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MMLuckyRotateWheel.h"

@implementation MMLuckyRotateWheel

+ (instancetype)luckyRotateWheel {

    return [[[NSBundle mainBundle] loadNibNamed:@"MMLuckyRotateWheel" owner:nil options:nil] lastObject];
}


@end
