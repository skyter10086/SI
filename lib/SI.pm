package SI;

use SI::Person;
use SI::Corp;
use SI::AvgSalary;
use SI::BaseSalary;
use SI::Status;
use SI::Nation;


my $stats = [
        SI::Status->new(code=>'01', value=>'参保缴费'),
        SI::Status->new(code=>'02', value=>'参保中断'),
        SI::Status->new(code=>'03', value=>'参保终止'),
        SI::Status->new(code=>'04', value=>'退休参保'),
        SI::Status->new(code=>'05', value=>'退休中断'),
        SI::Status->new(code=>'06', value=>'退休终止'),
        SI::Status->new(code=>'07', value=>'其他'),
    ];

    my $nations = [
        SI::Nation->new(code=>'01', value=>'汉族'),
        SI::Nation->new(code=>'02', value=>'蒙古族'),
        SI::Nation->new(code=>'03', value=>'回族'),
        SI::Nation->new(code=>'04', value=>'藏族'),
        SI::Nation->new(code=>'05', value=>'维吾尔族'),
        SI::Nation->new(code=>'06', value=>'苗族'),
        SI::Nation->new(code=>'07', value=>'彝族'),
        SI::Nation->new(code=>'08', value=>'壮族'),
        SI::Nation->new(code=>'09', value=>'布依族'),
        SI::Nation->new(code=>'10', value=>'朝鲜族'),
        SI::Nation->new(code=>'11', value=>'满族'),
        SI::Nation->new(code=>'12', value=>'侗族'),
        SI::Nation->new(code=>'13', value=>'瑶族'),
        SI::Nation->new(code=>'14', value=>'白族'),
        SI::Nation->new(code=>'15', value=>'土家族'),
        SI::Nation->new(code=>'16', value=>'哈尼族'),
        SI::Nation->new(code=>'17', value=>'哈萨克族'),
        SI::Nation->new(code=>'18', value=>'傣族'),
        SI::Nation->new(code=>'19', value=>'黎族'),
        SI::Nation->new(code=>'20', value=>'傈僳族'),
        SI::Nation->new(code=>'21', value=>'佤族'),
        SI::Nation->new(code=>'22', value=>'畲族'),
        SI::Nation->new(code=>'23', value=>'高山族'),
        SI::Nation->new(code=>'24', value=>'拉祜族'),
        SI::Nation->new(code=>'25', value=>'水族'),
        SI::Nation->new(code=>'26', value=>'东乡族'),
        SI::Nation->new(code=>'27', value=>'纳西族'),
        SI::Nation->new(code=>'28', value=>'景颇族'),
        SI::Nation->new(code=>'29', value=>'柯尔克孜族'),
        SI::Nation->new(code=>'30', value=>'土族'),
        SI::Nation->new(code=>'31', value=>'达斡尔族'),
        SI::Nation->new(code=>'32', value=>'仫佬族'),
        SI::Nation->new(code=>'33', value=>'羌族'),
        SI::Nation->new(code=>'34', value=>'布朗族'),
        SI::Nation->new(code=>'35', value=>'撒拉族'),
        SI::Nation->new(code=>'36', value=>'毛南族'),
        SI::Nation->new(code=>'37', value=>'仡佬族'),
        SI::Nation->new(code=>'38', value=>'锡伯族'),
        SI::Nation->new(code=>'39', value=>'阿昌族'),
        SI::Nation->new(code=>'40', value=>'普米族'),
        SI::Nation->new(code=>'41', value=>'塔吉克族'),
        SI::Nation->new(code=>'42', value=>'怒族'),
        SI::Nation->new(code=>'43', value=>'乌兹别克族'),
        SI::Nation->new(code=>'44', value=>'俄罗斯族'),
        SI::Nation->new(code=>'45', value=>'鄂温克族'),
        SI::Nation->new(code=>'46', value=>'德昂族'),
        SI::Nation->new(code=>'47', value=>'保安族'),
        SI::Nation->new(code=>'48', value=>'裕固族'),
        SI::Nation->new(code=>'49', value=>'京族'),
        SI::Nation->new(code=>'50', value=>'塔塔尔族'),
        SI::Nation->new(code=>'51', value=>'独龙族'),
        SI::Nation->new(code=>'52', value=>'鄂伦春族'),
        SI::Nation->new(code=>'53', value=>'赫哲族'),
        SI::Nation->new(code=>'54', value=>'门巴族'),
        SI::Nation->new(code=>'55', value=>'珞巴族'),
        SI::Nation->new(code=>'56', value=>'基诺族'),
        SI::Nation->new(code=>'57', value=>'其他'),
        SI::Nation->new(code=>'58', value=>'外国血统'),
    ];


sub stat {
    my ($class, $stat_code) = @_;
        if ($stat_code) {
        foreach (@$stats) {
            return $_->value if $_->code eq $stat_code;
        }
    } else {
        return $stats;
    }
}

sub nation {
    my ($class, $nation_code) = @_;
    if ($nation_code) {
        foreach (@$nations) {
            return $_->value if $_->code eq $nation_code;
        }
    } else {
       return $nations;
    }
}

1;
