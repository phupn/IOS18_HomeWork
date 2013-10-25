//
//  ViewController.m
//  CollectionTutorial18
//
//  Created by techmaster on 10/18/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
#pragma mark - Array
- (IBAction)demoArray:(id)sender {
    NSMutableArray *mutableArray = [NSMutableArray arrayWithObjects:@"ABC", @"DEF", nil];
    
    NSArray *array = @[@"Hello World", @12, [UIColor blackColor], self, mutableArray];
    
    [array[4] addObject:@"IJK"];  //Từng phần tử trong NSArray có thể gọi hàm để thay đổi chính nó
    //array[4] = @12; đối với NSArray, không được phép gán, thay đổi địa chỉ con trỏ của phần tử
    
    
    for (id object in array) {
        NSLog(@"%@ - %@", object, [object class]);
    }
    //Tuyệt đối không dùng kiểu quá chi tiết, cụ thể đối với trường hợp mảng có nhiều phần tử khác kiểu nhau
    /*for (NSNumber *number in array) {
        NSLog(@"%@", number);
    }*/
    
    for (int i= 0; i < [array count]; i++) {
        id object = array[i];
        NSLog(@"%@ - %@", object, [object class]);
    }
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"data" withExtension:@"plist"];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"];
    
    NSArray *arrayFromPlist = [NSArray arrayWithContentsOfURL:url];
    
    NSArray *arrayFromPlist2 = [NSArray arrayWithContentsOfFile:filePath];

    
    if ([arrayFromPlist isEqualToArray:arrayFromPlist2]) {
        NSLog(@"Totally Equal!");
    }
    
    
    
}
#pragma mark - NSMutableArray
- (IBAction)demoMutableArray:(id)sender {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"];

    NSMutableArray *array = [NSMutableArray arrayWithContentsOfFile:filePath];
    [array addObject:@123];
    [array removeObject: [array firstObject]];
    array[0] = @3.14158f;
    NSLog(@"%@", array);
    
    NSMutableArray *array2 = [NSMutableArray arrayWithArray:@[@"ABC", @"DEF", @"IJK"]];
    NSMutableArray *array3 = [NSMutableArray arrayWithCapacity:100]; //dành ra một vùng nhớ 100 * 4 bytes
    //cho đến iOS6: iOS là hệ điều hành 32 bit. Con trỏ có khả năng đánh địa chỉ 32 bit ~ 4 bytes.
    //Tối đa có thể đánh được địa chỉ RAM là 4GB.
    //iOS7 ở iPhone 5S sẽ hỗ trợ ứng dụng 64 bit.
    
    
    [array2 exchangeObjectAtIndex:2 withObjectAtIndex:0];
    
    
    NSMutableArray *array4 = [NSMutableArray arrayWithArray:@[@"A", @"B", @"C", @"D", @"E", @"F"]];
    NSMutableIndexSet *indexSet = [[NSMutableIndexSet alloc] initWithIndex:1];
    [indexSet addIndex:3];
    NSLog(@"%@", indexSet);
    
    [array4 insertObjects:@[@"1", @"2"] atIndexes:indexSet];
    NSLog(@"%@", array4);
    
    for (int i=0; i< 100; i++) {
        NSLog(@"%d", arc4random()%100); //Random trả về số nguyên từ 1 đến 100
    }
}

#pragma mark - Dictionary
- (IBAction)demoDictionary:(id)sender {
    NSDictionary *dic = @{@"A": @[@"Alber", @"Antonio", @"Alibaba"],
                          @"B": @[@"Brazil", @"Babeta", @"Bababa"],
                          @"C": @[@"Canbera"]};
    NSLog(@"%@", dic[@"A"]);
    NSLog(@"%@", dic[@"B"]);
    NSLog(@"%@", dic[@"C"]);
    
    NSMutableDictionary *mDic = [NSMutableDictionary dictionaryWithDictionary:dic];
    [mDic setObject:@[@"Diva", @"Daltero"] forKey:@"D"];
    
    [mDic setObject:@[@"Diva", @"Daltero", @"Dakota"] forKey:@"D"];
    
    NSLog(@"%@", mDic[@"D"]);
  
}

#pragma mark - Set
- (IBAction)demoSet:(id)sender {
    NSMutableSet *setA = [[NSMutableSet alloc] initWithObjects:@"A", @"B", @"C", @"A", @"B", @"B", nil];
    NSLog(@"%@", setA);
    
    NSMutableSet *setB = [[NSMutableSet alloc] initWithObjects:@"B", @"C", @"D", nil];

    //[setA intersectSet:setB];
    [setA unionSet:setB];
    NSLog(@"%@", setA);
    
    
    NSCountedSet *cSet = [[NSCountedSet alloc] initWithObjects:@"A", @"B", @"C", @"A", @"B", @"B", nil];
    NSLog(@"%@", cSet);
}

//Homework - 07
//Cach 1 : Chi lay nhung tu khoa quan tam
- (IBAction)DemoReadFile:(id)sender {
    //khai bao tu khoa de search
    NSMutableArray *keySearch = [NSMutableArray arrayWithObjects:@"War",@"Syria",@"Irar",@"America",@"Qaeda",@"Obama",nil];
    
    //dung NSCountedSet de lu ket qua tim duoc
    NSCountedSet *result = [NSCountedSet new];
    
    //Duong dan chua file putin
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"putin" ofType:@"txt"];
    
    //Doc noi dung file putin ra NSString
    NSString *fileContents = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    
    //Bo di ky tu trang va xuong dong cua noi dung
    NSArray *arrayFromContents = [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    //Duyet qua noi dung.
    //Neu co xuat hien tu khoa thi add vao NSCountedSet
    for (NSString *item in arrayFromContents) {
        if ([item length] <= 2) continue;
        for (NSString *obj in keySearch) {
            if ([item rangeOfString:obj].location != NSNotFound) {
                [result addObject:obj];
            }
        }
    }
    //Ghi log ket qua
    NSLog(@"%@", result);
}
//Cach 2 : loai bo di cac tu khong can quan tam
- (IBAction)ReadPutin2:(id)sender {
    //Duong dan chua file putin
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"putin" ofType:@"txt"];
    
    //Doc noi dung file putin ra NSString
    NSString *fileContents = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    
    //Bo di ky tu trang va xuong dong cua noi dung
    NSMutableArray *arrayFromContents = [NSMutableArray arrayWithArray:[fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]];
    
    //Khai bao mang cac tu can bo di
    NSArray *keyFilter = @[@"for",@"have",@"to",@"it",@"in",@"from",@"that",@"and",@"of",@"this",@"out",@"by",@"the",@"",@"that",@"he",@"so",@"equal",@"no",@"not",@"my",@"their",@"what",@"is",@"with"];
    
    //Xoa di cac tu khong can thiet
    [arrayFromContents removeObjectsInArray:keyFilter];
    
    //dung NSCountedSet de lu ket qua tim duoc
    NSCountedSet *result = [[NSCountedSet alloc] initWithArray:arrayFromContents];
    
    //Cho vao MustableArray de sap xep lai mang
    NSMutableArray *dictArray = [NSMutableArray array];
    for (NSNumber *num in result) {
        NSDictionary *dict = @{@"KeyWord":num, @"count":@([result countForObject:num])};
        [dictArray addObject:dict];
    }
    NSArray *final = [dictArray sortedArrayUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"count" ascending:NO ]]];
    
    NSLog(@"%@",final);
}
@end
