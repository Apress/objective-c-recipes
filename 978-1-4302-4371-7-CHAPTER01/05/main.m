#import "Car.h"

int main (int argc, const char * argv[]){
 	@autoreleasepool {
		Car *car = [[Car alloc] init];
		car.name = @"Sports Car";
		NSLog(@"car is %@", car.name);
	
	}
	return 0;
}