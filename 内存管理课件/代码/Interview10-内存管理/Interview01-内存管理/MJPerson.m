//
//  MJPerson.m
//  Interview01-内存管理
//
//  Created by MJ Lee on 2018/6/27.
//  Copyright © 2018年 MJ Lee. All rights reserved.
//

#import "MJPerson.h"

@implementation MJPerson
// 自动生成成员变量和属性的setter、getter实现
//@synthesize age = _age;

//- (void)setAge:(int)age
//{
//    _age = age;
//}
//
//- (int)age
//{
//    return _age;
//}

//- (void)setDog:(MJDog *)dog
//{
//    if (_dog != dog) {
//        [_dog release];
//        _dog = [dog retain];
//    }
//}
//
//- (MJDog *)dog
//{
//    return _dog;
//}

//- (void)setCar:(MJCar *)car
//{
//    if (_car != car) {
//        [_car release];
//        _car = [car retain];
//    }
//}
//
//- (MJCar *)car
//{
//    return _car;
//}

+ (instancetype)person
{
    return [[[self alloc] init] autorelease];
}

- (void)dealloc
{
    self.dog = nil;
    self.car = nil;
    NSLog(@"%s", __func__);
    [super dealloc];
}

@end
