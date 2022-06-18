# TeX

Docker + Ubuntu image + texlive (APT package)

## เริ่มต้น

1. เปิด project นี้ด้วย VS Code
1. ติดตั้ง extension `ms-vscode-remote.remote-containers`
1. `Control / Command` + `Shift` + `P`
1. แล้วเลือก command `Remote-Containers: Reopen in Container`  
    ![reincon.png](../assets/reincon.png?raw=true)
1. รอจน image build เสร็จ

## ทดสอบการติดตั้ง

```
$ cd tests
$ make test
```

ควรจะได้ `hello.pdf`

## TeX ที่ (คาดว่า) จะใช้ได้ [^1]

- BibTeX
- LaTeX
- LuaTeX
- XeLaTeX

## Info

### LaTeX-Workshop (VS Code Extension)

#### Compiling features [[ref]](https://github.com/James-Yu/LaTeX-Workshop/wiki/Compile)

เราสามารถเลือก $\TeX$ compiler ได้ผ่าน

- recipe system  
- เพิ่ม magic comment (`% !TEX program = <program>`) ใส่ในไฟล์ `.tex`  
    โดย default เราไม่สามารถใช้ feature นี้ได้ เนื่องจาก extension นี้ถูกตั้งค่าให้ใช้ recipe system เพื่อ backward compatibility  
    ถ้าเราต้องการใช้ magic comment:  
    ใน `<project root>/.vscode/settings.json` ให้ตั้ง `"latex-workshop.latex.build.forceRecipeUsage"` เป็น `false`  

[^1]: TeX engine ที่รองรับขึ้นอยู่กับ [APT packages](https://packages.ubuntu.com/search?suite=default&section=all&arch=any&keywords=texlive&searchon=names)  
