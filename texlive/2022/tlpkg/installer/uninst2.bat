rmdir /s /q "D:\XAMPP\LateX\texlive\2022\bin"
rmdir /s /q "D:\XAMPP\LateX\texlive\2022\readme-html.dir"
rmdir /s /q "D:\XAMPP\LateX\texlive\2022\readme-txt.dir"
if exist "D:\XAMPP\LateX\texlive\2022\temp" rmdir /s /q "D:\XAMPP\LateX\texlive\2022\temp"
rmdir /s /q "D:\XAMPP\LateX\texlive\2022\texmf-dist"
rmdir /s /q "D:\XAMPP\LateX\texlive\2022\tlpkg"
del /q "D:\XAMPP\LateX\texlive\2022\README.*"
del /q "D:\XAMPP\LateX\texlive\2022\LICENSE.*"
if exist "D:\XAMPP\LateX\texlive\2022\doc.html" del /q "D:\XAMPP\LateX\texlive\2022\doc.html"
del /q "D:\XAMPP\LateX\texlive\2022\index.html"
del /q "D:\XAMPP\LateX\texlive\2022\texmf.cnf"
del /q "D:\XAMPP\LateX\texlive\2022\texmfcnf.lua"
del /q "D:\XAMPP\LateX\texlive\2022\install-tl*.*"
del /q "D:\XAMPP\LateX\texlive\2022\tl-tray-menu.exe"
rem del /q "D:\XAMPP\LateX\texlive\2022\texlive.profile"
del /q "D:\XAMPP\LateX\texlive\2022\release-texlive.txt"
rmdir /s /q "D:/XAMPP/LateX/texlive/2022/texmf-var"
rmdir /s /q "D:/XAMPP/LateX/texlive/2022/texmf-config"
for %%f in ("D:\XAMPP\LateX\texlive\2022\*") do goto :done
for /d %%f in ("D:\XAMPP\LateX\texlive\2022\*") do goto :done
rd "D:\XAMPP\LateX\texlive\2022"
:done
@echo Done uninstalling TeXLive.
@pause
del "%0"
