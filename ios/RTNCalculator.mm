#import "RTNCalculator.h"

@implementation RTNCalculator

RCT_EXPORT_MODULE()

#ifdef RCT_NEW_ARCH_ENABLED
- (void)add:(double)a b:(double)b resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject {
    NSNumber *result = [[NSNumber alloc] initWithInteger:a+b];
    resolve(result);
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeRtnCalculatorSpecJSI>(params);
}
#endif

@end