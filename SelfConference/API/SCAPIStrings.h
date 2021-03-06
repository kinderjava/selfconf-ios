//
//  SCAPIStrings.h
//  SelfConference
//
//  Created by Jeff Burt on 5/11/15.
//  Copyright (c) 2015 Self Conference. All rights reserved.
//

@import Foundation;

/** The base url string to use for all API requests. */
FOUNDATION_EXPORT NSString * const kSCAPIServiceBaseUrlString;

extern const struct SCAPIRelativeUrlStrings {
    __unsafe_unretained NSString *events;
    __unsafe_unretained NSString *venues;
    __unsafe_unretained NSString *sessions;
    __unsafe_unretained NSString *rooms;
    __unsafe_unretained NSString *speakers;
    __unsafe_unretained NSString *sponsors;
    __unsafe_unretained NSString *sponsorLevels;
    __unsafe_unretained NSString *organizers;
    __unsafe_unretained NSString *feedbacks;
} SCAPIRelativeUrlStrings;

extern const struct SCAPIRequestKeys {
    /** Represents the "from_date" url parameter */
    __unsafe_unretained NSString *fromDate;
    
    /** Represents the "comments" parameter */
    __unsafe_unretained NSString *comments;
    
    /** Represents the "vote" parameter */
    __unsafe_unretained NSString *vote;
    
    /** Represents the "feedback" parameter */
    __unsafe_unretained NSString *feedback;
} SCAPIRequestKeys;
