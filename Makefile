publish:
	git add .
	git commit -m "add new content"
	git push 
	hugo 
	cd public && git add . && git commit -m "add new content" && git push  && echo "publish successly!"

add:
	pwd;time
	git add . 
	git commit -m "change post"
	echo --------
	git push
	git status

server:
	hugo server
