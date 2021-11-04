
### 命令行更新环境变量 用户 PATH Windows 11

```cmd
SETX PATH "c:\xxx\path;%PATH%"

```

---

#### 步骤如下:

 - 0 替换target为, 你要设置的新的path
   - 如果有多个, 那么使用;连接
   - c:\xxx\path1;c:\xxx\path2
   - 
 - 1 创建一个path_var.txt, 用于存储PATH
 - 2 检测要添加的目标path存不存在于path_var.txt文件中
 - 3 不存在
   - 设置一个变量currentPath, 存储当前的PATH
     - 输出notfound, (未发现)
     - 设置一个空值, 更新PATH (如果没有此步骤, 直接设置PATH, 会有重复的)
     - 更新PATH, 使用SETX命令.
       - 值="%target%;%currentPath%"
     - 
 - 4 存在
   - 输出found (发现)
   - 什么都不做
 - 5 输出 finished (更新完成)

---

end