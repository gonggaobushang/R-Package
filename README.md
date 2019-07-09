# R包开发教程

## Windows10,R-3.6.0-win,RStudio-1.2.1335
1. 打开最新版的rstudio，File—New Project—New Directory—R Package。  
2. 新建的Package name最好不要带点号等符号，路径最好都是英文。  
3. 创建完毕后rstudio自动跳到该工作空间，路径下出现包含man、R、DESCRIPTION、.Rproj、NAMESPACE的文件夹。  

   *man：用来放.Rd文档的文件夹。.Rd：用来说明的文档，可有可无。即在Console中，？某一函数，在右边Help中会出现的文档。
   建议直接在R脚本里写，会自动在man中更新。*  
   *如，在脚本中* ![1.png](https://github.com/gonggaobushang/R-Package/blob/master/README%20Pic/1.png)
   *，则运行* `devtools::document()` *后，man文件夹会出现hello3.Rd（不用手动去改该文件）。安装包后，若*
    `?hello3` *会在Help界面出现：* ![2.png](https://github.com/gonggaobushang/R-Package/blob/master/README%20Pic/2.png)  
    *R：用来放.r脚本的文件夹。可以储放多个脚本。*  
    *DESCRIPTION：对包的简要说明，包括包名、作者、版本、标题、依赖的包等信息。*
    *可以手动编辑。不对外发布的话，名称等信息可以不改、不填，但是依赖的包需要说明。可以通过*
    `use_package()` *实现。* ![3.png](https://github.com/gonggaobushang/R-Package/blob/master/README%20Pic/3.png)  
    *.Rproj：点击打开就是package的工作界面。*  
    *NAMESPACE：可以确定包中哪些函数输出。直接在R脚本里写，会自动更新。* ***并且要事先删除***  
    *如*
     ![4.png](https://github.com/gonggaobushang/R-Package/blob/master/README%20Pic/4.png)  
     *先删除自动生成的NAMESPACE，然后* `devtools::document()` *生成新的NAMESPACE。此时qplot_001能被输出，而其他没有加* 
     `#' @export` *这一行的不会被输出。如果要引用什么其他包的话，直接用包名：：函数的方式。*
   
4. 写完脚本后，运行代码：
    `library(devtools)`  
    `load_all()` *加载R文件夹中的所有包*  
    `document()`  *生成.Rd和NAMESPACE文档*  
    `check()`  *检查，不能出现errors，最好没有warnings，notes无关紧要*  
    `build()`  *生成tar.gz格式的包*  
    `build(binary=T)` *成zip格式的包*
5. 本地安装包，在rstudio中的Tools中，选择Install Packages  
    ![5.png](https://github.com/gonggaobushang/R-Package/blob/master/README%20Pic/5.png) 
   



## example003
上面教程的package，一个非常简易粗糙的例子。
