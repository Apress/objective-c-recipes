#import <Foundation/Foundation.h>

int main (void){

	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	NSLog (@"Hello World!");

	NSArray *listOfLetters = [NSArray arrayWithObjects:@"A", @"B", @"C", nil];

	NSLog(@"listOfLetters = %@", listOfLetters);

	[pool drain];
	[pool release];

  return 0;
}