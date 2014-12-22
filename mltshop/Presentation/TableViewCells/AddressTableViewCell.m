//
//  AddressTableViewCell.m
//  mltshop
//
//  Created by mactive.meng on 21/12/14.
//  Copyright (c) 2014 manluotuo. All rights reserved.
//

#import "AddressTableViewCell.h"

@interface AddressTableViewCell(){
    UILabel *consigneeLabel;
    UILabel *detailLabel;
    UILabel *districtLabel;
}

@property(nonatomic, strong)AddressModel *data;
@end

@implementation AddressTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initCellView];
    }
    return self;
}

- (void)initCellView
{
    consigneeLabel = [[UILabel alloc]initWithFrame:CGRectMake(H_20, TOP_PADDING, H_50, H_20)];
    consigneeLabel.font = FONT_14;
    consigneeLabel.textColor = GREENCOLOR;
    
    districtLabel = [[UILabel alloc]initWithFrame:CGRectMake(H_90, TOP_PADDING, H_200, H_20)];
    districtLabel.textColor = GRAYCOLOR;
    districtLabel.textAlignment = NSTextAlignmentRight;
    districtLabel.font = FONT_12;
    
    detailLabel = [[UILabel alloc]initWithFrame:CGRectMake(H_20, TOP_PADDING+H_24, H_280, H_30)];
    detailLabel.numberOfLines = 0;
    detailLabel.font = FONT_12;
    
    [self addSubview:consigneeLabel];
    [self addSubview:districtLabel];
    [self addSubview:detailLabel];
}


- (void)setNewData:(AddressModel *)_newData
{
    self.data = _newData;
    consigneeLabel.text = self.data.consignee;
    districtLabel.text = [NSString stringWithFormat:@"%@ %@ %@ %@",
                          self.data.countryName,
                          self.data.provinceName,
                          self.data.cityName,
                          self.data.districtName];
    detailLabel.text = self.data.address;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end