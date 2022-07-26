v1="I love you, Do you love me"
echo $v1
# 删除从开头开始第一个以任何字符开始匹配到的第一个ov字符串
var1=${v1#*love}
echo $var1