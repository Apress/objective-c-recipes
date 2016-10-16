#import <Foundation/Foundation.h>

@interface Car : NSObject

@property(strong) NSString *name;

+(void)writeDescriptionToLogWithThisDate:(NSDate *)date;

@end