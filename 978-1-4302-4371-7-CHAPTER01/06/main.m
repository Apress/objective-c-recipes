#import "Car.h"

int main (int argc, const char * argv[]){
 	@autoreleasepool {
		[Car writeDescriptionToLogWithThisDate:[NSDate date]];
	}
	return 0;
}