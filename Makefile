publish:
	git add .
	git commit -m "add new content"
	git push 
	hugo 
	cd public && git add . && git commit -m "add new content" && git push  && echo "publish successly!"

