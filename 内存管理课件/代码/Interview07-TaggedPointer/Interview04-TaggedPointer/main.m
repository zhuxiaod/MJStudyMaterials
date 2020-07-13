//
//  main.m
//  Interview04-TaggedPointer
//
//  Created by MJ Lee on 2018/6/21.
//  Copyright © 2018年 MJ Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

// 如果是iOS平台（指针的最高有效位是1，就是Tagged Pointer）
#   define _OBJC_TAG_MASK (1UL<<63)

// 如果是Mac平台（指针的最低有效位是1，就是Tagged Pointer）
#   define _OBJC_TAG_MASK 1UL

BOOL isTaggedPointer(id pointer)
{
    return ((uintptr_t)pointer & _OBJC_TAG_MASK) == _OBJC_TAG_MASK;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSNumber *number = [NSNumber numberWithInt:10];
//        NSNumber *number = @(10);
        
        NSNumber *number1 = @4;
        NSNumber *number2 = @5;
        NSNumber *number3 = @(0xFFFFFFFFFFFFFFF);
        
        NSLog(@"%d %d %d", isTaggedPointer(number1), isTaggedPointer(number2), isTaggedPointer(number3));
        NSLog(@"%p %p %p", number1, number2, number3);
    }
    return 0;
}
