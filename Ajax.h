#import <Foundation/Foundation.h>

@interface Ajax : NSObject

// get without callback blocks
+ (void)get:(NSString *)url;
+ (void)get:(NSString *)url params:(NSDictionary *)params;
+ (void)get:(NSString *)url headers:(NSDictionary *)headers;
+ (void)get:(NSString *)url params:(NSDictionary *)params headers:(NSDictionary *)headers;

// get with successBlock only
+ (void)get:(NSString *)url success:(void(^)(id))successBlock;
+ (void)get:(NSString *)url params:(NSDictionary *)params success:(void(^)(id))successBlock;
+ (void)get:(NSString *)url headers:(NSDictionary *)headers success:(void(^)(id))successBlock;
+ (void)get:(NSString *)url params:(NSDictionary *)params headers:(NSDictionary *)headers success:(void(^)(id))successBlock;

// get with errorBlock only
+ (void)get:(NSString *)url error:(void(^)(NSInteger, NSError *))errorBlock;
+ (void)get:(NSString *)url params:(NSDictionary *)params error:(void(^)(NSInteger, NSError *))errorBlock;
+ (void)get:(NSString *)url headers:(NSDictionary *)headers error:(void(^)(NSInteger, NSError *))errorBlock;
+ (void)get:(NSString *)url params:(NSDictionary *)params headers:(NSDictionary *)headers error:(void(^)(NSInteger, NSError *))errorBlock;

// get without headers and params
+ (void)get:(NSString *)url success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock;

// get with params, success, and error
+ (void)get:(NSString *)url params:(NSDictionary *)params success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock;

// get with header, success, and error
+ (void)get:(NSString *)url headers:(NSDictionary *)headers success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock;

// get with everything (params, headers, and callbacks)
+ (void)get:(NSString *)url params:(NSDictionary *)params headers:(NSDictionary *)headers success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock;

// post without callback blocks
+ (void)post:(NSString *)url;
+ (void)post:(NSString *)url params:(NSDictionary *)params;
+ (void)post:(NSString *)url headers:(NSDictionary *)headers;
+ (void)post:(NSString *)url params:(NSDictionary *)params headers:(NSDictionary *)headers;

// post with successBlock only
+ (void)post:(NSString *)url success:(void(^)(id))successBlock;
+ (void)post:(NSString *)url params:(NSDictionary *)params success:(void(^)(id))successBlock;
+ (void)post:(NSString *)url headers:(NSDictionary *)headers success:(void(^)(id))successBlock;
+ (void)post:(NSString *)url params:(NSDictionary *)params headers:(NSDictionary *)headers success:(void(^)(id))successBlock;

// post with errorBlock only
+ (void)post:(NSString *)url error:(void(^)(NSInteger, NSError *))errorBlock;
+ (void)post:(NSString *)url params:(NSDictionary *)params error:(void(^)(NSInteger, NSError *))errorBlock;
+ (void)post:(NSString *)url headers:(NSDictionary *)headers error:(void(^)(NSInteger, NSError *))errorBlock;
+ (void)post:(NSString *)url params:(NSDictionary *)params headers:(NSDictionary *)headers error:(void(^)(NSInteger, NSError *))errorBlock;

// post without headers and params
+ (void)post:(NSString *)url success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock;

// post with params, success, and error
+ (void)post:(NSString *)url params:(NSDictionary *)params success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock;

// post with header, success, and error
+ (void)post:(NSString *)url headers:(NSDictionary *)headers success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock;

// post with everything (params, headers, and callbacks)
+ (void)post:(NSString *)url params:(NSDictionary *)params headers:(NSDictionary *)headers success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock;

// download without headers
+ (void)download:(NSString *)url localFile:(NSString *)localFile progress:(void(^)(float))progressBlock success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock;

// download with headers
+ (void)download:(NSString *)url headers:(NSDictionary *)headers localFile:(NSString *)localFile progress:(void(^)(float))progressBlock success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock;

// upload
+ (void)upload:(NSString *)url headers:(NSDictionary *)headers params:(NSDictionary *)params localFile:(NSString *)localFile fileParameterName:(NSString *)fileParameterName progress:(void(^)(float))progressBlock success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock;

// upload with default file parameter name ("file")
+ (void)upload:(NSString *)url headers:(NSDictionary *)headers params:(NSDictionary *)params localFile:(NSString *)localFile progress:(void(^)(float))progressBlock success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock;

// upload without params and file parameter name
+ (void)upload:(NSString *)url headers:(NSDictionary *)headers localFile:(NSString *)localFile progress:(void(^)(float))progressBlock success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock;

// upload without headers and file parameter name
+ (void)upload:(NSString *)url params:(NSDictionary *)params localFile:(NSString *)localFile progress:(void(^)(float))progressBlock success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock;

// upload without headers, params and file parameter name
+ (void)upload:(NSString *)url localFile:(NSString *)localFile progress:(void(^)(float))progressBlock success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock;

// TODO set global headers, timeout, etc...

@end
