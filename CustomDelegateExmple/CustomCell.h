//
//  CustomCell.h
//  CustomDelegateExmple
//
//  Created by Joyal Serrao on 02/11/16.
//  Copyright © 2016 Joyal Clifford. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol customDelelate <NSObject>

@required // it means , the methods below are must be implemeted or else complier give error
-(void)pressedButton:(NSInteger)sender colorName:(UIColor *)color;// this my custom delege method declaretion , it can implement any where in class

-(void)indexOfButton:(NSInteger) indexPath backGroundColor:(UIColor *)bColor tintColor:(UIColor *)tColor;

@end

@interface CustomCell : UITableViewCell

@property(nonatomic,weak)id<customDelelate>delegate;
@property (weak, nonatomic) IBOutlet UIButton *myButton;


@end
