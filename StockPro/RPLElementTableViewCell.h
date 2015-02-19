//
//  RPLElementTableViewCell.h
//  StockPro
//
//  Created by Raul Pedraza on 17/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RPLElements.h"
@interface RPLElementTableViewCell : UITableViewCell


@property(strong,nonatomic)RPLElements *currentElement;



@property (weak, nonatomic) IBOutlet UITextField *elementName;

@property (weak, nonatomic) IBOutlet UITextField *elementNumber;

@property (weak, nonatomic) IBOutlet UITextField *elementPrice;

- (IBAction)elementButtonAdd:(id)sender;


+ (CGFloat)height;
+ (NSString *)cellId;

@end
