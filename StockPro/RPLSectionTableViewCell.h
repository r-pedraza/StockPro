//
//  RPLSectionTableViewCell.h
//  StockPro
//
//  Created by Raul Pedraza on 18/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RPLSectionTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UITextField *sectionName;

@property (weak, nonatomic) IBOutlet UILabel *sectionNumberElements;

+ (CGFloat)height;
+ (NSString *)cellId;


@end
