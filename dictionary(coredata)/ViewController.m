//
//  ViewController.m
//  dictionary(coredata)
//
//  Created by Arman Ostad Mirzaei on 8/18/15.
//  Copyright (c) 2015 Arman Ostad Mirzaei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize dic;


//--------------------------------------------------------------

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSManagedObjectContext *moc=[self managedObjectContext];
    
    NSFetchRequest *fetchRequest=[[NSFetchRequest alloc]initWithEntityName:@"CoreDic"];
    cars=[[moc executeFetchRequest:fetchRequest error:nil]mutableCopy];
    [self.tableView reloadData];
    
}

//--------------------------------------------------------------

#pragma mark - Retrieve and Save Data (Core Data)
-(NSManagedObjectContext *)managedObjectContext
{
    NSManagedObjectContext *context=nil;
    
    id delegate=[[UIApplication sharedApplication]delegate];
    if ([delegate performSelector:@selector(managedObjectContext)])
    {
        context=[delegate managedObjectContext];
    }
    
    return context;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
