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

links:
	find . -name \*.md -print0 | xargs -0 -n1 markdown-link-check
