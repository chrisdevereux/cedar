#import "AnARCClass.h"

/* Compile with -fobjc-arc */
#if !__has_feature(objc_arc)
#error This class is used for testing ARC compatibility and should be compiled with -fobjc-arc
#endif

@implementation AnARCClass

@synthesize fileManagerAutoreleased = _fileManagerAutoreleased, fileManager = _fileManager;

- (id)init
{
    self = [super init];
    if (self) {
        self.fileManager = [[NSFileManager alloc] init];
    }
    return self;
}

- (NSFileManager *)fileManagerAutoreleased {
    if (nil == _fileManagerAutoreleased) {
        _fileManagerAutoreleased = [[NSFileManager alloc] init];
    }
    return _fileManagerAutoreleased;
}

@end
