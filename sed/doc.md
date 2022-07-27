Stream Editor 对输出或者文本 的每一行, 逐行进行编辑处理
语法
1. 对标准输出进行处理，对匹配到的字符串进行某一种操作
   stdout | sed [option] "patten command"
2. 对文件进行处理，对匹配到的字符串进行某一种操作
   sed [option] "pattern command" file 

sed 常用选项
-n 只打印模式匹配到的行

-e 直接在指令列模式上进行 sed 的动作编辑

-f 直接将 sed 的动作写在一个文件内，-f filename则可以执行filename内的sed命令

-r 让sed命令支持扩展的正则表达式(默认是基础正则表达式)

-i 直接修改读取的文件内容，而不是由屏幕输出

command :
p: 打印

范例：
打印输出文件中的每一行, 只打印出匹配的行。 不会重复打印 
sed -n 'p' sed.txt

只打印匹配包含python的行
sed -n '/python/p' sed.txt


打印匹配到python或者PYTHON的选项。 
sed -n -e '/python/p' -e '/PYTHON/p' sed.txt

以指定文件内容的作为匹配命令
sed -n -f  edit.sed sed.txt

用正则表达式匹配[支持正则]
sed -n -r '/python|PYTHON/p' sed.txt

批量替换文件内容, 将文件内所有的love换成like 
sed -i 's/love/like/g' sed.txt

sed中pattern详解

