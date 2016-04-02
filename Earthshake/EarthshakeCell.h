//
//  EarthshakeCell.h
//  Earthshake
//
//  Created by Andrey Paunov on 2016-03-28.
//  Copyright © 2016 AP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EarthshakeCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *place;
@property (weak, nonatomic) IBOutlet UILabel *magnitude;
@property (weak, nonatomic) IBOutlet UILabel *date;
@property (weak, nonatomic) IBOutlet UILabel *time;
@property (weak, nonatomic) IBOutlet UILabel *featureType;

@end
