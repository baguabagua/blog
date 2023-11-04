call gitbook build . docs
call git add *
call git commit -m "%*"
call git push origin main
pause