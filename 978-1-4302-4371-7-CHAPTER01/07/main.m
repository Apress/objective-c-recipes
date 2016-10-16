#import "Car.h"

int main (int argc, const char * argv[]){
 	@autoreleasepool {
		Car *newCar = [[Car alloc] init];
		newCar.name = @"My New Car";
		[newCar writeOutThisCarsState];
	}
	return 0;
}