
////
//  CustomCell.m
//  CustomDelegateExmple
//
//  Created by Joyal Serrao on 02/11/16.
//  Copyright © 2016 Joyal Clifford. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)buttonClick:(id)sender {
    //delegate trigger
    
    [self.delegate pressedButton:_myButton.tag colorName:_myButton.backgroundColor];
    [self.delegate indexOfButton:_myButton.tag backGroundColor:_myButton.backgroundColor tintColor:_myButton.tintColor];
    
}

@end
