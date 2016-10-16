//
//  main.m
//  WebService_Bitly_JSON
//
//  Created by Matthew Campbell on 3/7/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
    @autoreleasepool {
        
        NSString *longURL = @"http://howtomakeiphoneapps.com/how-to-asynchronously-add-web-content-to-uitableview-in-ios/1732/";
#warning Get your API Login from https://bitly.com/ and put it here before running
        NSString *APILogin = @"[YOUR API LOGIN]";
#warning Get your API key from https://bitly.com/ and put it here before running
        NSString *APIKey = @"[YOUR API KEY]";
        
        NSString *requestString = [[NSString alloc] initWithFormat:
                                   @"http://api.bit.ly/shorten?version=2.0.1&longUrl=%@&login=%@&apiKey=%@&format=json", longURL, APILogin, APIKey];
        NSURL *requestURL = [NSURL URLWithString:requestString];
        NSData *responseData = [NSData dataWithContentsOfURL:requestURL];
        
        NSError *error = nil;
        NSDictionary *bitlyJSON = [NSJSONSerialization JSONObjectWithData:responseData
                                                                  options:0
                                                                    error:&error];
        if(!error){
            NSDictionary *results = [bitlyJSON objectForKey:@"results"];
            NSDictionary *resultsForLongURL = [results objectForKey:longURL];
            NSString *shortURL = [resultsForLongURL objectForKey:@"shortUrl"];     
            NSLog(@"shortURL = %@", shortURL);
        }
        else{
            NSLog(@"There was an error parsing the JSON");
        }
        
        NSLog(@"%@", bitlyJSON);
    }
    return 0;
}

