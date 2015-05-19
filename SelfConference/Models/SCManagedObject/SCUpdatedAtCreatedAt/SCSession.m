//
//  Session.m
//  SelfConference
//
//  Created by Jeff Burt on 5/11/15.
//  Copyright (c) 2015 Self Conference. All rights reserved.
//

#import "SCSession.h"
#import "SCEvent.h"
#import "SCRoom.h"
#import "UIColor+SCColor.h"
#import "NSString+SCHTMLTagConverter.h"

@implementation SCSession

@dynamic sessionID;
@dynamic slot;
@dynamic name;
@dynamic abstract;
@dynamic isKeynote;
@dynamic isFavorite;
@dynamic event;
@dynamic room;
@dynamic speakers;

- (NSArray *)speakersOrderedByName {
    NSSortDescriptor *sortedBySlotSortDescriptor =
    [NSSortDescriptor
     sortDescriptorWithKey:NSStringFromSelector(@selector(name))
     ascending:YES];
    
    return
    [self.speakers sortedArrayUsingDescriptors:@[sortedBySlotSortDescriptor]];
}

- (NSString *)joinedSpeakerNamesOrderedByName {
    return [[self.speakersOrderedByName valueForKey:NSStringFromSelector(@selector(name))]
            componentsJoinedByString:@", "];
}

- (UIColor *)color {
    NSArray *availableColors = @[[UIColor SC_red],
                                 [UIColor SC_orange],
                                 [UIColor SC_yellow],
                                 [UIColor SC_purple]];
    
    NSInteger indexOfColorToUse = self.sessionID % availableColors.count;
    
    return availableColors[indexOfColorToUse];
}

#pragma mark MagicalRecord

- (BOOL)importAbstract:(NSString *)abstract {
    self.abstract = abstract.SC_convertedHTMLTagString;
    return YES;
}

@end