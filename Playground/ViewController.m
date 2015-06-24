//
//  ViewController.m
//  PlaygroundApp
//
//  Created by Raz Elkayam on 10/15/14.
//  Copyright (c) 2014 Appoxee. All rights reserved.
//

#import "ViewController.h"
#import "APXRandomUser.h"
#import "APXNetworkManager.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextView *textLabel;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControler;

@property (nonatomic, strong) APXRandomUser *randomUser;

@end

@implementation ViewController

#pragma mark - View Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.imageView.layer.cornerRadius = self.imageView.frame.size.height / 2;
    self.imageView.layer.masksToBounds = YES;
    self.imageView.layer.borderWidth = 0;

    [self fetchData];
}

#pragma mark - Networking

- (void)fetchData
{
    [self cleanUI];
    
    [self.activityIndicator startAnimating];
    
    [APXNetworkManager fetchRandomUser:^(BOOL success, id data) {
        
        NSArray *users = (NSArray *)data[@"results"];
        
        NSDictionary *keyedValues = [users lastObject];
        
        self.randomUser = [[APXRandomUser alloc] initWithKeyedValues:keyedValues];
        
        dispatch_queue_t task = dispatch_queue_create("download", NULL);
        
        dispatch_async(task, ^{
            
            NSData *data = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:self.randomUser.pictures.medimImageURLString]];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                
                self.textLabel.text = [self.randomUser formatedName];
                
                self.imageView.image = [[UIImage alloc] initWithData:data];
                
                [self.activityIndicator stopAnimating];
            });
        });
    }];
}

- (void)cleanUI
{
    self.textLabel.text = @"";
    self.segmentControler.selectedSegmentIndex = 0;
}

#pragma mark - IBActions

- (IBAction)segmentedControllValueChanged:(UISegmentedControl *)sender {
    
    switch (sender.selectedSegmentIndex) {
        case 0:
        {
            self.textLabel.text = [self.randomUser formatedName];
        }
            break;
        case 1:
        {
            self.textLabel.text = [self.randomUser email];
        }
            break;
        case 2:
        {
            self.textLabel.text = [self.randomUser formatedAddress];
        }
            break;
        case 3:
        {
            self.textLabel.text = [self.randomUser phoneCell];
        }
            break;
            
        default:
            break;
    }
}

- (IBAction)reload:(id)sender
{
    [self fetchData];
}

@end
