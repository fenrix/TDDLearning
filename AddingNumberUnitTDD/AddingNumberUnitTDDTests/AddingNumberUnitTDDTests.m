//
//  AddingNumberUnitTDDTests.m
//  AddingNumberUnitTDDTests
//
//  Created by Fenrir on 4/7/2559 BE.
//  Copyright © 2559 Fenrir. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RSAddition.h"


@interface AddingNumberUnitTDDTests : XCTestCase

@end

@implementation AddingNumberUnitTDDTests{
    
    RSAddition *addition;
}

- (void)setUp {
    [super setUp];
    addition = [[RSAddition alloc]init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

//- (void)testExample {
//    // This is an example of a functional test case.
//    // Use XCTAssert and related functions to verify your tests produce the correct results.
//}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testAdditionClassExists{
    
    XCTAssertNotNil(addition, @"RSAddition class exist");// *addition must not nil
    
}

-(void)testAddTwoPlusTwo {
    
    NSInteger result = [addition addNumberOne:2 withNumberTwo:2];
    XCTAssertEqual(result, 4, @"Addition of 2 + 2 is 4");//Check the number of *result is the interest output
    
}

-(void)testAddTwoPlusSeven {
    
    NSInteger result = [addition addNumberOne:2 withNumberTwo:7];
    XCTAssertEqual(result, 9, @"Addition of 2 + 7 is 9");//Check the number of *result is the interest output
    
}



@end
