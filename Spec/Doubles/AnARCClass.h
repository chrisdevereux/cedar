#import <Foundation/Foundation.h>

@interface AnARCClass : NSObject

@property (nonatomic, strong) NSFileManager * fileManager;
@property (nonatomic, strong) NSFileManager * fileManagerAutoreleased;

@end
