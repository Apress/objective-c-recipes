#import "HTMLTags.h"

@implementation NSString (HTMLTags) 

-(NSString *) encloseWithParagraphTags{ 
	return [NSString stringWithFormat:@"<p>%@</p>",self]; 
} 

@end