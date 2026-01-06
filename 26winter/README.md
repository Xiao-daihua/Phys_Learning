# My Latex Template
这是我latex的模板，使用方法。通过cd打开一个我希望存放笔记的文件夹。然后直接gitclone进去：
```
git clone https://github.com/Xiao-daihua/Reading_Latextemplate
cd latex_template
rm -rf .git
```

pull 下来之后我们会出现被识别为submodule的情况，请使用下面的代码防止这种情况发生：
```
git rm --cached Reading_Latextemplate
rm -rf Reading_Latextemplate/.git
```

