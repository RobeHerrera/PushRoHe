//
//  MunicipioViewController.h
//  NavigationControllerRoHe
//
//  Created by RobertoHerrera on 6/27/16.
//  Copyright © 2016 RobertoHerrera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapsViewController.h"

@interface MunicipioViewController : UIViewController

@property NSString *destinationMunicpio;
/*
@property NSString *coorLatitude ;
@property NSString *coorLongitude;
*/

@property double coorLatitude;
@property double coorLongitude;
@property double coorZoom;

 @property (strong, nonatomic) IBOutlet UIImageView *imgMunicipio;
@property (strong, nonatomic) IBOutlet UILabel *lblMunicipio;
@property (strong, nonatomic) IBOutlet UILabel *lblMunicipioDes;
@property (strong, nonatomic) IBOutlet UIButton *btnViewLocation;
- (IBAction)btnPressedViewLocation:(id)sender;


@end
