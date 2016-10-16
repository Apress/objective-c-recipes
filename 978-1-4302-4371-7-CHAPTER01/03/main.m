#import "Car.h"

int main (int argc, const char * argv[]){
 	@autoreleasepool {
		Car *car = [[Car alloc] init];
		NSLog(@"car is %@", car);
	
	}
	return 0;
}