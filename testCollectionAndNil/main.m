//
//  main.m
//  testCollectionAndNil
//
//  Created by Yana on 11.03.2018.
//  Copyright © 2018 Yana. All rights reserved.
//  excerpt from a book:
//  You are not allowed to add nil to any of the collection classes we have covered. What if you need to put that idea of nothingness, a "hole", into a collection? There is a class called NSNull. There is exactly one instance of NSNull, and it is and object that represents nothingness.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *hotel = [[NSMutableArray alloc]init];
        
        NSString *lobby = @"The lobby is made in antique style.";
        NSString *pool = @"The pool is two meters deep.";
        NSString *bedrooms = @"The bedrooms are made in Moroccan style.";
        
        // Lobby on the ground floor
        [hotel addObject:lobby];
        
        // Pool on the second
        [hotel addObject:pool];
        
        // The third floor has not been built out
        [hotel addObject:[NSNull null]];
        
        // Bedrooms on fourth floor
        [hotel addObject:bedrooms];
        
        // Go and print all Hotel array
        for (NSString *s in hotel){
            NSLog(@"%@", s);
        }
        
        // Print an empty element that is in an array under index 2
        NSLog(@"It is th element with the value %@", [hotel objectAtIndex:2]);
    }
    return 0;
}

