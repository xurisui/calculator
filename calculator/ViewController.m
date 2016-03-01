//
//  ViewController.m
//  calculator
//
//  Created by 蒋欣洋 on 16/3/1.
//  Copyright (c) 2016年 luoyangligong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textFileShow;

@property (nonatomic, strong)NSString *firsNumber;
@property (nonatomic, strong)NSString *secondNumber;
@property (nonatomic, strong)NSString *resultNumber;
@property (nonatomic, strong)NSString *methoType;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _textFileShow.text = [NSString stringWithFormat:@"0"];
    self.view.backgroundColor = [UIColor lightGrayColor];
}

- (IBAction)numberClick:(UIButton *)sender {//数字0~9//
    
    switch (sender.tag) {
        case 1:
            [sender setTitle:[NSString stringWithFormat:@"1"] forState:UIControlStateNormal];
            
            int result1 = [_textFileShow.text intValue] * 10 + [sender.titleLabel.text intValue];
            _textFileShow.text = [NSString stringWithFormat:@"%d",result1];
            break;
        case 2:
            [sender setTitle:[NSString stringWithFormat:@"2"] forState:UIControlStateNormal];
            
            int result2 = [_textFileShow.text intValue] * 10 + [sender.titleLabel.text intValue];
            _textFileShow.text = [NSString stringWithFormat:@"%d",result2];
            break;
        case 3:
            [sender setTitle:[NSString stringWithFormat:@"3"] forState:UIControlStateNormal];
            
            int result3 = [_textFileShow.text intValue] * 10 + [sender.titleLabel.text intValue];
            _textFileShow.text = [NSString stringWithFormat:@"%d",result3];
            break;
        case 4:
            [sender setTitle:[NSString stringWithFormat:@"4"] forState:UIControlStateNormal];
            
            int result4 = [_textFileShow.text intValue] * 10 + [sender.titleLabel.text intValue];
            _textFileShow.text = [NSString stringWithFormat:@"%d",result4];
            break;
        case 5:
            [sender setTitle:[NSString stringWithFormat:@"5"] forState:UIControlStateNormal];
            
            int result5 = [_textFileShow.text intValue] * 10 + [sender.titleLabel.text intValue];
            _textFileShow.text = [NSString stringWithFormat:@"%d",result5];
            break;
        case 6:
            [sender setTitle:[NSString stringWithFormat:@"6"] forState:UIControlStateNormal];
            
            int result6 = [_textFileShow.text intValue] * 10 + [sender.titleLabel.text intValue];
            _textFileShow.text = [NSString stringWithFormat:@"%d",result6];
            break;
        case 7:
            [sender setTitle:[NSString stringWithFormat:@"7"] forState:UIControlStateNormal];
            
            int result7 = [_textFileShow.text intValue] * 10 + [sender.titleLabel.text intValue];
            _textFileShow.text = [NSString stringWithFormat:@"%d",result7];
            break;
        case 8:
            [sender setTitle:[NSString stringWithFormat:@"8"] forState:UIControlStateNormal];
            
            int result8 = [_textFileShow.text intValue] * 10 + [sender.titleLabel.text intValue];
            _textFileShow.text = [NSString stringWithFormat:@"%d",result8];
            break;
        case 9:
            [sender setTitle:[NSString stringWithFormat:@"9"] forState:UIControlStateNormal];
            
            int result9 = [_textFileShow.text intValue] * 10 + [sender.titleLabel.text intValue];
            _textFileShow.text = [NSString stringWithFormat:@"%d",result9];
            break;
        case 10:
            [sender setTitle:[NSString stringWithFormat:@"10"] forState:UIControlStateNormal];
            
            int result10 = [_textFileShow.text intValue] * 10 + [sender.titleLabel.text intValue];
            _textFileShow.text = [NSString stringWithFormat:@"%d",result10];
            break;
        default:
            break;
    }
}

- (IBAction)methodClick:(UIButton *)sender {

    switch (sender.tag) {
        case 11://加
            _firsNumber = _textFileShow.text;
            _textFileShow.text = [NSString stringWithFormat:@"0"];
            _methoType = @"+";
            break;
        case 12://减
            _firsNumber = _textFileShow.text;
            _textFileShow.text = [NSString stringWithFormat:@"0"];
            _methoType = @"-";
            break;
        case 13://乘
            _firsNumber = _textFileShow.text;
            _textFileShow.text = [NSString stringWithFormat:@"0"];
            _methoType = @"*";
            break;
        case 14://除
            _firsNumber = _textFileShow.text;
            _textFileShow.text = [NSString stringWithFormat:@"0"];
            _methoType = @"/";
            break;
        default:
            break;
    }
}

- (IBAction)equalClick:(UIButton *)sender {//等
    _secondNumber = _textFileShow.text;
    if ([_methoType isEqualToString:@"+"]) {
        _resultNumber = [NSString stringWithFormat:@"%d",([_firsNumber intValue] + [_secondNumber intValue])];
    }
    if ([_methoType isEqualToString:@"-"]) {
        _resultNumber = [NSString stringWithFormat:@"%d",([_firsNumber intValue] - [_secondNumber intValue])];
    }
    if ([_methoType isEqualToString:@"*"]) {
        _resultNumber = [NSString stringWithFormat:@"%d",([_firsNumber intValue] * [_secondNumber intValue])];
    }
    if ([_methoType isEqualToString:@"/"]) {
        _resultNumber = [NSString stringWithFormat:@"%d",([_firsNumber intValue] / [_secondNumber intValue])];
    }
    
    _textFileShow.text = _resultNumber;
}

- (IBAction)clean:(UIButton *)sender {//清零
    _textFileShow.text = [NSString stringWithFormat:@"0"];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
