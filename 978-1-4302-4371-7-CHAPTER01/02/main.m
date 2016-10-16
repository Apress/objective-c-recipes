#import <Foundation/Foundation.h>
int main (int argc, const char * argv[]){
 	@autoreleasepool {
		
		//To print out primitive types:
		int myInteger = 1;
		NSLog(@"myInteger = %i", myInteger);
		
		float myFloatingPointNumber = 2;
		NSLog(@"myFloatingPointNumber = %f", myFloatingPointNumber);
		NSLog(@"myFloatingPointNumber in scientific notation = %e", myFloatingPointNumber);
		
		char myCharacter = 'A';
		NSLog(@"myCharacter = %c", myCharacter);
		
		//To print out the % symbol
		NSLog(@"Percent Sign looks like %%");
		
		//To print out Objective-C objects:
		NSString *myString = @"My String";
		NSLog(@"myString = %@", myString);
		NSLog(@"myString's pointer = %p", myString);
		
		//To print out a series of values
		NSLog(@"myCharacter = %c and myInteger = %i", myCharacter, myInteger);

	}
	return 0;
}