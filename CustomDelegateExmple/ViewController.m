//
//  ViewController.m
//  CustomDelegateExmple
//
//  Created by Joyal Serrao on 02/11/16.
//  Copyright © 2016 Joyal Clifford. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,customDelelate>
{
    NSMutableArray *counter;
    
}
@property (weak, nonatomic) IBOutlet UITableView *myTable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myTable.dataSource=self;
    self.myTable.delegate=self;
    
    [self.myTable registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
   
    [counter addObject:@"one"];
    [counter addObject:@"Two"];
    [counter addObject:@"Three"];
    [counter addObject:@"Two"];
    [counter addObject:@"Two"];

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CustomCell *cell=(CustomCell *)[self.myTable dequeueReusableCellWithIdentifier:@"Cell"];
    cell.delegate=self;
    cell.myButton.tag=indexPath.row;
    cell.myButton.backgroundColor=[UIColor colorWithHue:drand48() saturation:1.0 brightness:1.0 alpha:1.0];
    

    if (cell==nil) {
        cell=[[CustomCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell"];
        
    }
    return cell;
    
    
}

#pragma mark -My custom Delegate
-(void)pressedButton:(NSInteger)sender colorName:(UIColor *)color{
  //  NSLog(@"%ld : color %@",(long)sender,color);
    
    
}
-(void)indexOfButton:(NSInteger)indexPath backGroundColor:(UIColor *)bColor tintColor:(UIColor *)tColor{
    NSLog(@"%ld : color %@, Color %@",(long)indexPath,bColor,tColor);
    if (bColor>tColor) {
        [self.myTable performSelector:@selector(reloadData) withObject:nil];
        
  
    }
}

@end
