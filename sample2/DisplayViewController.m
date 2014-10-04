//
//  DisplayViewController.m
//  sample2
//
//  Created by Remilekun Awe on 10/1/14.
//  Copyright (c) 2014 Remilekun Awe. All rights reserved.
//

#import "DisplayViewController.h"

@interface DisplayViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *currentImage;

@end

@implementation DisplayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [ UIImage imageNamed:self.currentphoto.filename];
    [self.currentImage setImage:image];
    
    
    // Do any additional setup after loading the view.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    InfoViewController * ivc = [segue destinationViewController];
    ivc.currentphoto = self.currentphoto;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
