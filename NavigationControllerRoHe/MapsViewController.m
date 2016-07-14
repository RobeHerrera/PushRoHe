//
//  MapsViewController.m
//  GoogleMapsRoHe
//
//  Created by RobertoHerrera on 7/6/16.
//  Copyright © 2016 RobertoHerrera. All rights reserved.
//

#import "MapsViewController.h"
@import GoogleMaps;
#import <Google/Analytics.h>

@interface MapsViewController ()

@end

@implementation MapsViewController{
    GMSMapView *mapView_;
}
-(void)viewWillAppear:(BOOL)animated{
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker set:kGAIScreenName value:@"MapsViewController"];
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createMap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)createMap {
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:self.locationLatitude
                                                            longitude:self.locationLongitude
                                                                 zoom:self.locationZoom];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(self.locationLatitude, self.locationLongitude);
    marker.title = @"UAG";
    marker.snippet = @"Clase de Maestría";
    marker.map = mapView_;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
@end
