/*
 * Copyright 2010 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

#import <Foundation/Foundation.h>

#import "../AmazonClientException.h"

#import "S3Request.h"
#import "S3Constants.h"

/** contains the parameters used for the getObject operation. */
@interface S3GetObjectRequest : S3Request {
	int rangeStart, rangeEnd;
	bool rangeSet;
	NSDate   *ifModifiedSince;
	NSDate	 *ifUnmodifiedSince;
	NSString *ifMatch;
	NSString *ifNoneMatch;
	NSOutputStream *outputStream;
}

/** Specifies the starting index of the byte range to download */
@property (nonatomic, readonly) int rangeStart;

/** Specifies the end index of the byte range to download */
@property (nonatomic, readonly) int rangeEnd;

/** Return the object only if it has been modified since the specified time, otherwise return a 304 (not modified). */
@property (nonatomic, retain) NSDate* ifModifiedSince;

/** Return the object only if it has not been modified since the specified time, otherwise return a 412 (precondition failed). */
@property (nonatomic, retain) NSDate* ifUnmodifiedSince;

/** Return the object only if its entity tag (ETag) is the same as the one specified, otherwise return a 412 (precondition failed). */
@property (nonatomic, retain) NSString* ifMatch;

/** Return the object only if its entity tag (ETag) is different from the one specified, otherwise return a 304 (not modified). */
@property (nonatomic, retain) NSString* ifNoneMatch;

/** Gets and Sets the output stream for the response data.
 * <p>
 * If this is set, then the response will write the data
 * to the supplied stream instead of making it available through
 * the data property.
 * </p><p>
 * The stream must be opened and scheduled in the desired runloop.
 * The SDK will not close the stream.
 */
@property (nonatomic, assign) NSOutputStream* outputStream;

/** Initialize the request setting the key and bucketName properties. */
-(S3GetObjectRequest *)initWithKey:(NSString *)key withBucket:(NSString *)bucket;

/** sets the start and end of the range. */
-(void)setRangeStart:(int)start rangeEnd:(int)end;

/** returns the range in the form 'bytes=start:end' */
-(NSString *)getRange;

@end
