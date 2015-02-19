//
//  RPLElementosSeccionTableViewController.h
//  StockPro
//
//  Created by Raul Pedraza on 16/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RPLCoreDataTableViewController.h"
@class RPLSections;

@interface RPLElementosSeccionTableViewController : RPLCoreDataTableViewController

@property (strong,nonatomic)RPLSections *relacionSeccion;



@end
