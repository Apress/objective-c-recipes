//
//  LinkShortener.m
//  WebService_Bitly_XML
//
//  Created by Matthew Campbell on 3/6/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "LinkShortener.h"

@implementation LinkShortener

-(NSString *)getTheShortURLVersionOfThisLongURL:(NSString *)longURL{
    
#warning Get your API Login from https://bitly.com/ and put it here before running
    NSString *APILogin = @"[YOUR API LOGIN]";
#warning Get your API key from https://bitly.com/ and put it here before running
    NSString *APIKey = @"[YOUR API KEY]";
    
	NSString *requestString = [[NSString alloc] initWithFormat:
                               @"http://api.bit.ly/shorten?version=2.0.1&longUrl=%@&login=%@&apiKey=%@&format=xml", longURL, APILogin, APIKey];
	NSURL *requestURL = [NSURL URLWithString:requestString];
    
    NSData *responseData = [NSData dataWithContentsOfURL:requestURL];
    recorderString = nil;	
    NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithData:responseData];
	xmlParser.delegate = self;
	[xmlParser parse];
    
    NSLog(@"%@", recorderString);
    
    if(recorderString)
        return [recorderString copy];
    else
        return nil;;
}

- (void) parser:(NSXMLParser *)parser 
didStartElement:(NSString *)elementName 
   namespaceURI:(NSString *)namespaceURI 
  qualifiedName:(NSString *)qName
     attributes:(NSDictionary *)attributeDict{
	
	currentElement = [elementName copy];
	if ([elementName isEqualToString:@"shortUrl"]) {
		recorderString = [[NSMutableString alloc] init];
	}
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
	if ([currentElement isEqualToString:@"shortUrl"])
		[recorderString appendString:string];
	
}

@end
