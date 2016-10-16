#import "Car.h"

@implementation Car

-(void)setName:(NSString *)name{
    name_ = name;
}

-(NSString *) name{
    return name_;
}

@end