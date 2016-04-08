//
//  AddTwoNumberViewControllerTests.m
//  AddingNumberUnitTDD
//
//  Created by Itti Apinyanont on 4/8/16.
//  Copyright © 2016 Fenrir. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface AddTwoNumberViewControllerTests : XCTestCase{
    
    UIStoryboard *storyboard;
    ViewController *viewCon;
    
}

@end

@implementation AddTwoNumberViewControllerTests

- (void)setUp {
    [super setUp];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    viewCon = [storyboard instantiateViewControllerWithIdentifier:@"VController"];
    [viewCon view]; // The getter first invokes [self loadView] if the view hasn't been set yet. Subclasses must call super if they override the setter or getter.

    
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


-(void)testFirstNumberTextFieldConnection {
    
    XCTAssertNotNil([viewCon firstNumberTextField], @"firstNumberTextField should be connected");
    
}


-(void)testSecondNumberTextFieldConnection {
    
    XCTAssertNotNil([viewCon secondNumberTextField], @"secondNumberTextField should be connected");
    
}




@end
