# Kydras Push Hook
git add .
git commit -m "[Kydras] Push + Compliance Export"
git push origin main
pwsh C:\Kydras\Bootstrap\export.ps1
