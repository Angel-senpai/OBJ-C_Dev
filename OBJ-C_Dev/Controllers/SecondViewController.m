//
//  SecondViewController.m
//  OBJ-C_Dev
//
//  Created by Даниил Мурыгин on 10.10.2020.
//

#import "SecondViewController.h"
#import "CustomTableViewCell.h"
#import "NewsViewController.h"
#import "NetworkAPI.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableView = [[UITableView alloc] initWithFrame: self.view.bounds style: UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.rowHeight = self.view.frame.size.width * 0.2;
    [self.view addSubview:_tableView];
    
    [[NetworkAPI sharedInstance] newsForRequest: ^(NewsRequestModel *result){
        self->_news = result.news;
        dispatch_async(dispatch_get_main_queue(),
                       ^{(void)self->_tableView.reloadData;});
        
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _news.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NewsViewController *controller = [[NewsViewController alloc] initWithNews:_news[indexPath.row]];
    NSLog(@"Test");
    
    [self.navigationController showViewController:controller sender:self];
    //[self.navigationController popViewControllerAnimated:YES];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier"];
    if (!cell) {
        cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellIdentifier"];
    }
    [cell configurateWithNews:_news[indexPath.row]];
    (void)cell.setNeedsLayout;
    (void)cell.layoutIfNeeded;
    return cell;
}

@end
