//
//  RPLShoppingCartTableViewCell.h
//  StockPro
//
//  Created by Raul Pedraza on 19/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RPLElements;

@interface RPLShoppingCartTableViewCell : UITableViewCell

@property(strong,nonatomic)RPLElements *currentElement;


@property (weak, nonatomic) IBOutlet UILabel *nameElementShoppingCart;

@property (weak, nonatomic) IBOutlet UILabel *priceElementShoppingCart;
@property (weak, nonatomic) IBOutlet UILabel *numberElementsShoppingCart;

@property (weak, nonatomic) IBOutlet UIStepper *stepperShoppingCart;


+ (CGFloat)height;
+ (NSString *)cellId;

@end
