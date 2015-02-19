//
//  RPLSectionTableViewController.m
//  StockPro
//
//  Created by Raul Pedraza on 16/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "RPLSectionTableViewController.h"
#import "RPLSections.h"
#import "RPLSectionTableViewCell.h"
#import "RPLElementosSeccionTableViewController.h"

@interface RPLSectionTableViewController ()

@end

@implementation RPLSectionTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    //Boton
    UIBarButtonItem *buttonSection=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                             target:self
                                                                             action:@selector(addSection:)];
    
    
    //En el navigation controller vas a añadir un boton a la derecha.
    self.navigationItem.rightBarButtonItem=buttonSection;
    self.title=@"Secciones";
    

    
    // Registramos el nib de la celda
    UINib *nib = [UINib nibWithNibName:@"RPLSectionTableViewCell" bundle:[NSBundle mainBundle]];
    [self.tableView registerNib:nib forCellReuseIdentifier:[RPLSectionTableViewCell cellId]];
    //Altura de la tabla
    self.tableView.rowHeight=[RPLSectionTableViewCell height];
    
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    //Averiguar de cual de los Elementos nos hablan
    //De fecthRequest dame el objeto del indice del parametro que te entra como indexpath
    
    RPLSections *sections=[self.fetchedResultsController objectAtIndexPath:indexPath];
    
    //Creamos la celda
    RPLSectionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[RPLSectionTableViewCell cellId] forIndexPath:indexPath];
    
    
    //Rellenamos la celda con nuestros datos
    //Necesitamos parsear los numeros a string, el que acabe en value es por que mogenerator nos añade
    //una variable que acaba en value
    cell.sectionName.text=[NSString stringWithFormat:@"%@ ",sections.nameSection];
    cell.sectionNumberElements.text=[NSString stringWithFormat:@"%lu und",sections.elements.count];//de secciones cuenta cuantos elementos.
    
    return cell;
}

#pragma mark - DeleteSection

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Averiguar si se quiere eliminar
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Borramos la Seccio. Tenemos que averiguar cual es
        NSManagedObjectContext *searchObject = self.fetchedResultsController.managedObjectContext;
        RPLSections *deleteSection = [self.fetchedResultsController objectAtIndexPath:indexPath];
        
        [searchObject deleteObject:deleteSection];
    }
    
}

- (NSString *) tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return @"Remove";
    
}

#pragma mark - Delegate

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Averiguar cual es la seccion pulsada
    RPLSections *section = [self.fetchedResultsController objectAtIndexPath:indexPath];
    
    // Creo la selección de datos
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:[RPLElements entityName]];
    
    request.fetchBatchSize = 30;
    request.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:RPLElementsAttributes.nameElement
                                                        ascending:YES]];
                         
    request.predicate = [NSPredicate predicateWithFormat:@"seccion == %@", section];
    
    NSFetchedResultsController *fc = [[NSFetchedResultsController alloc] initWithFetchRequest:request
                                                                         managedObjectContext:self.fetchedResultsController.managedObjectContext
                                                                           sectionNameKeyPath:nil
                                                                                    cacheName:nil];
    
    // Creo una instancia de controlador de elementos
    RPLElementosSeccionTableViewController *elementsTVC = [[RPLElementosSeccionTableViewController alloc]initWithFetchedResultsController:fc
                                                                                                                                    style:UITableViewStylePlain];
    
    //Con esta propiedad relaciono seccion y elementos
    elementsTVC.relacionSeccion=section;
    
    // Lo pusheo
    [self.navigationController pushViewController:elementsTVC animated:YES];
    
    
    
}






#pragma mark - Actions

- (void)addSection:(id)sender {
    
    // Crear una libreta
    [RPLSections withName:@"Nueva seccion"
              numElements:0
                  context:self.fetchedResultsController.managedObjectContext];
    
    
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
