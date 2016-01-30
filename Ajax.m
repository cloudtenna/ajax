#import "Ajax.h"
#import "AFHTTPSessionManager.h"
#import "AFHTTPRequestOperation.h"
#import "AFHTTPRequestOperationManager.h"

@implementation Ajax

+ (void)get:(NSString *)url params:(NSDictionary *)params headers:(NSDictionary *)headers success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock
{
    params = params ? params : @{};
    headers = headers ? headers : @{};
    successBlock = successBlock ? successBlock : ^(id response) {};
    errorBlock = errorBlock ? errorBlock : ^(NSInteger statusCode, NSError *error) {};

    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];

    // Set headers
    AFHTTPRequestSerializer *requestSerializer = [AFHTTPRequestSerializer serializer];
    for (NSString *key in headers.allKeys) {
        [requestSerializer setValue:headers[key] forHTTPHeaderField:key];
    }
    [manager setRequestSerializer:requestSerializer];

    [manager GET:url
      parameters:params
         success:^(AFHTTPRequestOperation *operation, id response) {
             successBlock(response);
         }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             errorBlock([operation.response statusCode], error);
         }];
}

+ (void)post:(NSString *)url params:(NSDictionary *)params headers:(NSDictionary *)headers success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock
{
    params = params ? params : @{};
    headers = headers ? headers : @{};
    successBlock = successBlock ? successBlock : ^(id response) {};
    errorBlock = errorBlock ? errorBlock : ^(NSInteger statusCode, NSError *error) {};

    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];

    // Set headers
    AFHTTPRequestSerializer *requestSerializer = [AFHTTPRequestSerializer serializer];
    for (NSString *key in headers.allKeys) {
        [requestSerializer setValue:headers[key] forHTTPHeaderField:key];
    }
    [manager setRequestSerializer:requestSerializer];

    [manager POST:url
       parameters:params
          success:^(AFHTTPRequestOperation *operation, id response) {
              successBlock(response);
          }
          failure:^(AFHTTPRequestOperation *operation, NSError *error) {
              errorBlock([operation.response statusCode], error);
          }];
}

// get without callback blocks
+ (void)get:(NSString *)url
{
    return [self get:url params:nil headers:nil success:nil error:nil];
}

+ (void)get:(NSString *)url params:(NSDictionary *)params
{
    return [self get:url params:params headers:nil success:nil error:nil];
}

+ (void)get:(NSString *)url headers:(NSDictionary *)headers
{
    return [self get:url params:nil headers:headers success:nil error:nil];
}

+ (void)get:(NSString *)url params:(NSDictionary *)params headers:(NSDictionary *)headers
{
    return [self get:url params:params headers:headers success:nil error:nil];
}

// get with successBlock only
+ (void)get:(NSString *)url success:(void(^)(id))successBlock
{
    return [self get:url params:nil headers:nil success:successBlock error:nil];
}

+ (void)get:(NSString *)url params:(NSDictionary *)params success:(void(^)(id))successBlock
{
    return [self get:url params:params headers:nil success:successBlock error:nil];
}

+ (void)get:(NSString *)url headers:(NSDictionary *)headers success:(void(^)(id))successBlock
{
    return [self get:url params:nil headers:headers success:successBlock error:nil];
}

+ (void)get:(NSString *)url params:(NSDictionary *)params headers:(NSDictionary *)headers success:(void(^)(id))successBlock
{
    return [self get:url params:params headers:headers success:successBlock error:nil];
}

// get with errorBlock only
+ (void)get:(NSString *)url error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self get:url params:nil headers:nil success:nil error:errorBlock];
}

+ (void)get:(NSString *)url params:(NSDictionary *)params error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self get:url params:params headers:nil success:nil error:errorBlock];
}

+ (void)get:(NSString *)url headers:(NSDictionary *)headers error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self get:url params:nil headers:headers success:nil error:errorBlock];
}

+ (void)get:(NSString *)url params:(NSDictionary *)params headers:(NSDictionary *)headers error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self get:url params:params headers:headers success:nil error:errorBlock];
}

// get without headers and params
+ (void)get:(NSString *)url success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self get:url params:nil headers:nil success:successBlock error:errorBlock];
}

// get with params, success, and error
+ (void)get:(NSString *)url params:(NSDictionary *)params success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self get:url params:params headers:nil success:successBlock error:errorBlock];
}

// get with header, success, and error
+ (void)get:(NSString *)url headers:(NSDictionary *)headers success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self get:url params:nil headers:headers success:successBlock error:errorBlock];
}

// post without callback blocks
+ (void)post:(NSString *)url
{
    return [self post:url params:nil headers:nil success:nil error:nil];
}

+ (void)post:(NSString *)url params:(NSDictionary *)params
{
    return [self post:url params:params headers:nil success:nil error:nil];
}

+ (void)post:(NSString *)url headers:(NSDictionary *)headers
{
    return [self post:url params:nil headers:headers success:nil error:nil];
}

+ (void)post:(NSString *)url params:(NSDictionary *)params headers:(NSDictionary *)headers
{
    return [self post:url params:params headers:headers success:nil error:nil];
}

// post with successBlock only
+ (void)post:(NSString *)url success:(void(^)(id))successBlock
{
    return [self post:url params:nil headers:nil success:successBlock error:nil];
}

+ (void)post:(NSString *)url params:(NSDictionary *)params success:(void(^)(id))successBlock
{
    return [self post:url params:params headers:nil success:successBlock error:nil];
}

+ (void)post:(NSString *)url headers:(NSDictionary *)headers success:(void(^)(id))successBlock
{
    return [self post:url params:nil headers:headers success:successBlock error:nil];
}

+ (void)post:(NSString *)url params:(NSDictionary *)params headers:(NSDictionary *)headers success:(void(^)(id))successBlock
{
    return [self post:url params:params headers:headers success:successBlock error:nil];
}

// post with errorBlock only
+ (void)post:(NSString *)url error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self post:url params:nil headers:nil success:nil error:errorBlock];
}

+ (void)post:(NSString *)url params:(NSDictionary *)params error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self post:url params:params headers:nil success:nil error:errorBlock];
}

+ (void)post:(NSString *)url headers:(NSDictionary *)headers error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self post:url params:nil headers:headers success:nil error:errorBlock];
}

+ (void)post:(NSString *)url params:(NSDictionary *)params headers:(NSDictionary *)headers error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self post:url params:params headers:headers success:nil error:errorBlock];
}

// post without headers and params
+ (void)post:(NSString *)url success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self post:url params:nil headers:nil success:successBlock error:errorBlock];
}

// post with params, success, and error
+ (void)post:(NSString *)url params:(NSDictionary *)params success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self post:url params:params headers:nil success:successBlock error:errorBlock];
}

// post with header, success, and error
+ (void)post:(NSString *)url headers:(NSDictionary *)headers success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self post:url params:nil headers:headers success:successBlock error:errorBlock];
}

// download
+ (void)download:(NSString *)url headers:(NSDictionary *)headers localFile:(NSString *)localFile progress:(void(^)(float))progressBlock success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock
{
    headers = headers ? headers : @{};

    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];

    NSURL *URL = [NSURL URLWithString:url];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:URL];

    [manager setDownloadTaskDidWriteDataBlock:^(NSURLSession *session, NSURLSessionDownloadTask *downloadTask, int64_t bytesWritten, int64_t totalBytesWritten, int64_t totalBytesExpectedToWrite) {
        float percent = (1.0*totalBytesWritten)/totalBytesExpectedToWrite;
        progressBlock(percent);
    }];

    // Set headers
    [request setAllHTTPHeaderFields:headers];

    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:nil destination:^NSURL *(NSURL *targetPath, NSURLResponse *response) {
        return [NSURL fileURLWithPath:localFile];
    } completionHandler:^(NSURLResponse *response, NSURL *filePath, NSError *error) {
        if (error) {
            NSInteger statusCode = ((NSHTTPURLResponse *)response).statusCode;
            errorBlock(statusCode, error);
        } else {
            successBlock(localFile);
        }
    }];

    [downloadTask resume];
}

// download without headers
+ (void)download:(NSString *)url localFile:(NSString *)localFile progress:(void(^)(float))progressBlock success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self download:url headers:nil localFile:localFile progress:progressBlock success:successBlock error:errorBlock];
}

+ (NSString *)mimetypeFromFilePath:(NSString *)filePath
{
    // reference: http://ddeville.me/2011/12/mime-to-UTI-cocoa/
    CFStringRef fileExtension = (__bridge CFStringRef)[filePath pathExtension];
    CFStringRef UTI = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, fileExtension, NULL);
    CFStringRef MIMEType = UTTypeCopyPreferredTagWithClass(UTI, kUTTagClassMIMEType);
    CFRelease(UTI);

    NSString *mimeType = (__bridge_transfer NSString *)MIMEType;

    if (!mimeType) {
        mimeType = @"application/unknown";
    }

    return mimeType;
}

// upload
+ (void)upload:(NSString *)url headers:(NSDictionary *)headers params:(NSDictionary *)params localFile:(NSString *)localFile fileParameterName:(NSString *)fileParameterName progress:(void(^)(float))progressBlock success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock
{
    NSString *mimeType = [self mimetypeFromFilePath:localFile];
    NSString *fileName = [localFile lastPathComponent];
    NSDictionary *emptyDic = @{};
    __block BOOL failed = false;
    __block NSError *error;

    headers = headers ? headers :emptyDic;
    params = params ? params : emptyDic;
    fileParameterName = fileParameterName ? fileParameterName : @"file"; // default file parameter name is "file"

    AFHTTPRequestSerializer *serializer = [AFHTTPRequestSerializer serializer];

    NSMutableURLRequest *request = [serializer multipartFormRequestWithMethod:@"POST"
                                                                    URLString:url
                                                                   parameters:params
                                                    constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
                                                        BOOL success = [formData appendPartWithFileURL:[NSURL fileURLWithPath:localFile] name:fileParameterName fileName:fileName mimeType:mimeType error:&error];

                                                        if (!success) {
                                                            failed = YES;
                                                            errorBlock(600, error);
                                                        }
                                                    }
                                                                        error:nil];

    if (failed) {
        NSLog(@"ERROR: upload failed %@", error);
        return;
    }

    [request setAllHTTPHeaderFields:headers];

    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];

    NSMutableIndexSet *acceptableStatusCodes = [[NSMutableIndexSet alloc] init];
    [acceptableStatusCodes addIndex:200]; // successful when status code is 200

    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableStatusCodes = acceptableStatusCodes;
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];

    // Test timeout
    [manager.requestSerializer setTimeoutInterval:25];  // Time out after 25 seconds

    AFHTTPRequestOperation *operation = [manager HTTPRequestOperationWithRequest:request
                                                                         success:^(AFHTTPRequestOperation *operation, NSData *responseObject) {
                                                                             NSError *error;
                                                                             id json = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:&error];

                                                                             successBlock(error ? responseObject: json);
                                                                         }
                                                                         failure:^(AFHTTPRequestOperation *operation, NSError *err) {
                                                                             errorBlock([operation.response statusCode], err);
                                                                         }];

    [operation setUploadProgressBlock:^(NSUInteger bytesWritten, long long totalBytesWritten, long long totalBytesExpectedToWrite) {
        progressBlock((float)totalBytesWritten/totalBytesExpectedToWrite);
    }];
    
    [operation start];
}

// upload with default file parameter name ("file")
+ (void)upload:(NSString *)url headers:(NSDictionary *)headers params:(NSDictionary *)params localFile:(NSString *)localFile progress:(void(^)(float))progressBlock success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self upload:url headers:headers params:params localFile:localFile fileParameterName:nil progress:progressBlock success:successBlock error:errorBlock];
}

// upload without params and file parameter name
+ (void)upload:(NSString *)url headers:(NSDictionary *)headers localFile:(NSString *)localFile progress:(void(^)(float))progressBlock success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self upload:url headers:headers params:nil localFile:localFile fileParameterName:nil progress:progressBlock success:successBlock error:errorBlock];
}

// upload without headers and file parameter name
+ (void)upload:(NSString *)url params:(NSDictionary *)params localFile:(NSString *)localFile progress:(void(^)(float))progressBlock success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self upload:url headers:nil params:params localFile:localFile fileParameterName:nil progress:progressBlock success:successBlock error:errorBlock];
}

// upload without headers, params and file parameter name
+ (void)upload:(NSString *)url localFile:(NSString *)localFile progress:(void(^)(float))progressBlock success:(void(^)(id))successBlock error:(void(^)(NSInteger, NSError *))errorBlock
{
    return [self upload:url headers:nil params:nil localFile:localFile fileParameterName:nil progress:progressBlock success:successBlock error:errorBlock];
}

@end
