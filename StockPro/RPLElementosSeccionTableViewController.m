//
//  RPLElementosSeccionTableViewController.m
//  StockPro
//
//  Created by Raul Pedraza on 16/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "RPLElementosSeccionTableViewController.h"
#import "RPLCoreDataTableViewController.h"
#import "RPLElements.h"
#import "RPLElementTableViewCell.h"
#import "RPLSections.h"
#import "AppDelegate.h"

@interface RPLElementosSeccionTableViewController ()

@end

@implementation RPLElementosSeccionTableViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    //Boton
    UIBarButtonItem *buttonSection=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                                target:self
                                                                                action:@selector(addElement:)];
    UIBarButtonItem *buttonShop=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave
                                                                             target:self
                                                                             action:nil];
    
  

    
    
    //En el navigation controller vas a añadir un boton a la derecha.
    self.navigationItem.rightBarButtonItem=buttonSection;
    self.title=@"Elementos";
    
    // Registramos el nib de la celda
    UINib *nib = [UINib nibWithNibName:@"RPLElementTableViewCell" bundle:[NSBundle mainBundle]];
    [self.tableView registerNib:nib forCellReuseIdentifier:[RPLElementTableViewCell cellId]];
    //Altura de la tabla
    self.tableView.rowHeight=[RPLElementTableViewCell height];
   

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    //Averiguar de cual de los Elementos nos hablan
    //De fecthRequest dame el objeto del indice del parametro que te entra como indexpath

    RPLElements *elements=[self.fetchedResultsController objectAtIndexPath:indexPath];
    
    //Creamos la celda
     RPLElementTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[RPLElementTableViewCell cellId] forIndexPath:indexPath];
    
    
    //Rellenamos la celda con nuestros datos
    //Necesitamos parsear los numeros a string, el que acabe en value es por que mogenerator nos añade
    //una variable que acaba en value
    
    cell.currentElement=elements;
    cell.elementName.text=[NSString stringWithFormat:@"%@ ",elements.nameElement];
    cell.elementNumber.text=[NSString stringWithFormat:@"%lld und",elements.numStockValue];
    cell.elementPrice.text=[NSString stringWithFormat:@"%f €",elements.priceElementValue];
    
    return cell;
}

#pragma mark - Actions

- (void)addElement:(id)sender {
    
    // Crear una libreta
    [RPLElements withName:@"Nuevo elemento"
                 numStock:0
             priceElement:0
                  seccion:self.relacionSeccion
                 context:self.fetchedResultsController.managedObjectContext];
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
