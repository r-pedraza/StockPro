//
//  RPLPayTableViewController.m
//  StockPro
//
//  Created by Raul Pedraza on 16/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "RPLPayTableViewController.h"
#import "RPLShoppingCartTableViewCell.h"
#import "RPLElements.h"
#import "RPLShoppingCartTableViewCell.h"

@interface RPLPayTableViewController ()

@end

@implementation RPLPayTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Averiguar de que elementos nos hablan
   
    
    UINavigationController *nav=[[UINavigationController alloc]init];
    nav.title=@"ShoppingCart";

  
    
    
    
    // Registramos el nib de la celda
    UINib *nib = [UINib nibWithNibName:@"RPLShoppingCartTableViewCell" bundle:[NSBundle mainBundle]];
    [self.tableView registerNib:nib forCellReuseIdentifier:[RPLShoppingCartTableViewCell cellId]];
    //Altura de la tabla
    self.tableView.rowHeight=[RPLShoppingCartTableViewCell height];
    
    
}

#pragma mark - DeleteElement

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Averiguar si se quiere eliminar
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Borramos la Seccio. Tenemos que averiguar cual es
        NSManagedObjectContext *searchObject = self.fetchedResultsController.managedObjectContext;
        RPLElements *deleteElement = [self.fetchedResultsController objectAtIndexPath:indexPath];
        
        [searchObject deleteObject:deleteElement];
    }
    
}

- (NSString *) tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return @"Remove";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    RPLElements *element=[self.fetchedResultsController objectAtIndexPath:indexPath];
    
    //creamos la celda
    RPLShoppingCartTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:[RPLShoppingCartTableViewCell cellId] forIndexPath:indexPath];
    
    cell.currentElement=element;
    cell.nameElementShoppingCart.text=element.nameElement;
    cell.numberElementsShoppingCart.text=[NSString stringWithFormat:@"%@" ,element.numStock ];
    cell.priceElementShoppingCart.text=[NSString stringWithFormat:@"%@", element.priceElement ];
  
    
    return cell;
}



/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
