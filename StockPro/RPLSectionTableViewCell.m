//
//  RPLSectionTableViewCell.m
//  StockPro
//
//  Created by Raul Pedraza on 18/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "RPLSectionTableViewCell.h"

@implementation RPLSectionTableViewCell

#pragma mark - Class methods

+ (CGFloat)height {
    return 60.0;
}

+ (NSString *)cellId {
    return [self description];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
