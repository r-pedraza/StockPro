//
//  RPLElementTableViewCell.m
//  StockPro
//
//  Created by Raul Pedraza on 17/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "RPLElementTableViewCell.h"
#import "RPLElements.h"
#import "RPLSections.h"
#import "RPLShoppingCart.h"
#import "AppDelegate.h"

@implementation RPLElementTableViewCell

#pragma mark - Class methods

- (IBAction)elementButtonAdd:(id)sender {
    //referencia al delegado
    AppDelegate *delegate=[[UIApplication sharedApplication]delegate];
    
    
    //Descubrir quien es el elemento
    self.currentElement.shoppingCart=delegate.shop;
    
}


+ (CGFloat)height {
    return 98.0;
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
-(void)prepareForReuse{

    [super prepareForReuse];
    
    self.currentElement=nil;

}

@end
