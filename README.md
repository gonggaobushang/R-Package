# R包开发教程

## Windows10,R-3.6.0-win,RStudio-1.2.1335
1. 打开最新版的rstudio，File—New Project—New Directory—R Package。  
2. 新建的Package name最好不要带点号等符号，路径最好都是英文。  
3. 创建完毕后rstudio自动跳到该工作空间，路径下出现包含man、R、DESCRIPTION、.Rproj、NAMESPACE的文件夹。  

   *man：用来放.Rd文档的文件夹。.Rd：用来说明的文档，可有可无。即在Console中，？某一函数，在右边Help中会出现的文档。
   建议直接在R脚本里写，会自动在man中更新。*  
   *如，在脚本中* ![1](https://github.com/gonggaobushang/R-Package/blob/master/README%20Pic/1.png)
   *，则运行 `<devtools::document()>`后*
   
4. 运行代码



## example003
一个非常简易粗糙的实例包。
