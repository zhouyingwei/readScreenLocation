

#import "ViewController.h"
@interface ViewController ()
@property (nonatomic, strong) UILabel *lable;
@property (nonatomic, strong) UILabel *endLable;
@property (nonatomic, strong) UIView *temp;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *lable = [[UILabel alloc] init];
    self.lable = lable;
    lable.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:lable];
    self.lable.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 100, 300, 50);
    
    
    UILabel *endLable = [[UILabel alloc] init];
    self.endLable = endLable;
    endLable.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:endLable];
    self.endLable.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 50, 300, 50);
    
    
    
    
    UIView *temp = [[UIView alloc] init];
    self.temp = temp;
    temp.backgroundColor = [UIColor redColor];
    [self.view addSubview:temp];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self.view];
    self.temp.center = CGPointMake(touchPoint.x, touchPoint.y);
    self.temp.bounds = CGRectMake(0, 0,  5, 5);
    self.lable.text = [NSString stringWithFormat:@"  开始 x = %.1f    y = %.1f ",touchPoint.x,touchPoint.y];
    
    
}


-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self touchesEnded:touches withEvent:event];
}


-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self.view];
    self.temp.center = CGPointMake(touchPoint.x, touchPoint.y);
    self.temp.bounds = CGRectMake(0, 0,  5, 5);
    self.endLable.text = [NSString stringWithFormat:@"  结束 x = %.1f    y = %.1f ",touchPoint.x,touchPoint.y];
}

@end
