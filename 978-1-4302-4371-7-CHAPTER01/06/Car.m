#import "Car.h"

@implementation Car
@synthesize name;

+(void)writeDescriptionToLogWithThisDate:(NSDate *)date{
	NSLog(@"Today's date is %@ and this class represents a car", date);
}

@end