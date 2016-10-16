//
//  LinkShortener.h
//  WebService_Bitly_XML
//
//  Created by Matthew Campbell on 3/6/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinkShortener : NSObject<NSXMLParserDelegate>{
    @private
    NSMutableString *recorderString;
    NSString *currentElement;
}

-(NSString *)getTheShortURLVersionOfThisLongURL:(NSString *)longURL;

@end