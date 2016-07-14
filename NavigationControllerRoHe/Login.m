//
//  Login.m
//  PushExampleRoHe
//
//  Created by RobertoHerrera on 7/13/16.
//  Copyright © 2016 RobertoHerrera. All rights reserved.
//

#import "Login.h"
#import <DigitsKit/DigitsKit.h>


@interface Login ()

@end

@implementation Login

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    DGTAuthenticateButton *authButton;
    authButton = [DGTAuthenticateButton buttonWithAuthenticationCompletion:^(DGTSession *session, NSError *error) {
        if (session.userID) {
            // TODO: associate the session userID with your user model
            NSString *msg = [NSString stringWithFormat:@"Phone number: %@", session.phoneNumber];
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You are logged in!"
                                                            message:msg
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
            
            /* HERE IS MY CODE TO MOVE TO THE NEXT SCREEN */
            [self performSegueWithIdentifier:@"Home" sender:self];
            
            //////////////////////////////////////////////////
        } else if (error) {
            NSLog(@"Authentication error: %@", error.localizedDescription);
        }
    }];
    authButton.center = self.view.center;
    [self.view addSubview:authButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
