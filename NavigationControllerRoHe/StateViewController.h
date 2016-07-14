//
//  StateViewController.h
//  NavigationControllerRoHe
//
//  Created by RobertoHerrera on 6/27/16.
//  Copyright © 2016 RobertoHerrera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cellStates.h"
#import "MunicipioViewController.h"

@interface StateViewController : UIViewController

@property NSString *destinationTitle;
@property NSString *destinationDescription;
@property NSString *destinationPhoto;

@property (strong, nonatomic) IBOutlet UIImageView *imgState2;
@property (strong, nonatomic) IBOutlet UILabel *lblState2;
@property (strong, nonatomic) IBOutlet UILabel *lblDescription2;

@end
