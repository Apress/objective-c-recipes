#import "HTMLTags.h"

int main (int argc, const char * argv[]){
 	@autoreleasepool {
		NSString *webText = @"This is the first line of my blog post";
		
		//Print out the string like normal:
		NSLog(@"%@", webText);
		
		//Print out the string using the category function:
		NSLog(@"%@", [webText encloseWithParagraphTags]);
	}
	return 0;
}