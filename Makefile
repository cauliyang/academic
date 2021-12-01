
publish:
	git add .
	git commit -m "add new content"
	git push 
	hugo 
	cd publish
	git add .
	git commit -m "add new content"
	git push 
	echo "publish successly!"
