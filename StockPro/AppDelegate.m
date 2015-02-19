//
//  AppDelegate.m
//  StockPro
//
//  Created by Raul Pedraza on 16/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "AppDelegate.h"
#import "RPLCoreDataStack.h"
#import "RPLElements.h"
#import "RPLSections.h"
#import "RPLShoppingCart.h"
#import "RPLElementosSeccionTableViewController.h"
#import "RPLSectionTableViewController.h"
#import "RPLPayTableViewController.h"
#import "RPLElementTableViewCell.h"
#import "RPLPayTableViewController.h"


@interface AppDelegate ()
//Propiedad para tratar coredata
@property (strong, nonatomic)RPLCoreDataStack *stack;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    //Stack nos permite crear nuestros objetos.
    self.stack=[RPLCoreDataStack coreDataStackWithModelName:@"Model"];
    [self createModels];
    
    // Creamos el conjunto de datos
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:[RPLSections entityName]];
    request.fetchBatchSize = 30;
    request.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:RPLSectionsAttributes.nameSection
                                                              ascending:YES
                                                               selector:@selector(caseInsensitiveCompare:)]];
                    
    
    NSFetchedResultsController *fetchcontroller = [[NSFetchedResultsController alloc]initWithFetchRequest:request
                                                                                     managedObjectContext:self.stack.context
                                                                                       sectionNameKeyPath:nil                                                                                   cacheName:nil];
    
    //Controladores
    
    //TableView
      RPLSectionTableViewController *sectionsTVC=[[RPLSectionTableViewController alloc]initWithFetchedResultsController:fetchcontroller style:UITableViewStylePlain];
    sectionsTVC.title=@"Secciones";
    
    RPLElementosSeccionTableViewController *elements=[[RPLElementosSeccionTableViewController alloc]init];
    elements.title=@"Elementos";
    
    RPLPayTableViewController *shop=[[RPLPayTableViewController alloc]init];
    shop.title=@"Shop";
  
    
    
    //Navigation
    UINavigationController *nv=[[UINavigationController alloc]initWithRootViewController:sectionsTVC];
    
    
    //Tab Bar controller
    UITabBarController *tab=[[UITabBarController alloc]init];
    [tab setViewControllers:@[nv,elements,shop] animated:YES];
    
    
    
    self.window.rootViewController=tab;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


#pragma mark - Models

-(void) createModels{
    
    
    RPLSections *sections=[RPLSections withName:@"Sections"
                                    numElements:0
                                        context:self.stack.context];
    
    
    RPLElements *element=[RPLElements withName:@"Elemento1"
                                      numStock:0
                                  priceElement:0
                                       seccion:sections
                                       context:self.stack.context];
    
    
    
    RPLShoppingCart *shoppingCart=[RPLShoppingCart withNumElements:0
                                                             price:0
                                                           context:self.stack.context];
    
    
    NSLog(@"Elementos %@, Secciones %@, Cart %@",element,sections,shoppingCart);

    
    
}

@end
