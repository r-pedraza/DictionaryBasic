//
//  RPLDIcTableViewController.m
//  RPLDicccionarioBasico
//
//  Created by Raul Pedraza on 19/1/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "RPLDIcTableViewController.h"
#import "RPLDefinitionViewController.h"

@interface RPLDIcTableViewController ()

@end

@implementation RPLDIcTableViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    //creamos el modelo
    _model=[[RPLDicModel alloc]init];

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


-(void)viewWillAppear:(BOOL)animated{
    
    //Cargamos primero lo que contenga NSObject
    [super viewWillAppear:animated];
    self.title=@"English - Spanish";

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    //tendremos que conseguir el numero de celdas, que son las palabras,a traves de un array
    
    return [[self.model.myDictionary allKeys]count];

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Comprobamos si tenenmos celda disponible.
    
    //he pedido una celda con el id que me hace falta. //Si existe la cojo y si no la creo.
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell==nil) {//if(!nill)
        
        //Si no hay ninguna celda creara una del estilo que definamos y el id será como las que estamos creando.
        cell=[[UITableViewCell alloc]
              initWithStyle:UITableViewCellStyleDefault
              reuseIdentifier:@"Cell"];
        
    }
    
    
    //Buscamos y guardamos.
    //Con self.model estaremos en model y podremos acceder a sus metodos
    //de mi modelo que e usn diccionario, ejecutame el metodo wordAtIndex y me das la que corresponde co la celda que me sta pidiendo. indexPath.row tenemos la fila de la seccion que estamos generando.
   NSString *word= [self.model wordAtIndex:indexPath.row];
    
    cell.textLabel.text=word;
    
    return cell;
}


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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    //el identificador de la transicion coresponde al que yo  he puesto
    if([segue.identifier isEqualToString:@"showMeaning"]){
        
        //buscamos palabras a mostrar y su significado
        NSString *word=nil;
        NSString *meaning=nil;

        
        NSIndexPath *anIndexPath = [self.tableView indexPathForSelectedRow];
        
        word = [self.model wordAtIndex:anIndexPath.row];
        //para acceder a los metodos de nsdictionary llamamos a objetforkey y nos devolvera word.
        meaning = [self.model.myDictionary objectForKey:word];
        
        //asignamos datos al viewcontroller destino del segue
        
        RPLDefinitionViewController *destination = segue.destinationViewController;
        //estamos entrando dentro del definition view controller a su propiedad word, y le estamos asignando el texto con el valor que recoja aqui de la variable word.
       
        destination.palabra = word;
        
        destination.significado= meaning;
        
        
    
    }
}


@end
