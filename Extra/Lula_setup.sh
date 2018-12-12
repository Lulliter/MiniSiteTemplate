#!/usr/bin/env bash

# Deployment of Project Pages From Your gh-pages branch 
		# https://gohugo.io/hosting-and-deployment/hosting-on-github/#deployment-of-project-pages-from-your-gh-pages-branch
				# and 
		# https://www.hjdskes.nl/blog/update-deploying-hugo-on-personal-gh-pages/
# This script does the required work to set up your personal GitHub Pages
# repository for deployment using Hugo. Run this script only once -- when the
# setup has been done, run the `deploy.sh` script to deploy changes and update
# your website. See
# https://hjdskes.github.io/blog/update-deploying-hugo-on-personal-github-pages/
# for more information.

#L-->
git branch hugo # (default)




# Name of the GIT branch containing the Hugo source files.
SOURCE=hugo #master

msg() {
    printf "\033[1;32m :: %s\n\033[0m" "$1"
}

msg "Adding the \`public\` folder to .gitignore"
echo "public" >> .gitignore

msg "Deleting the \`master\` branch"
git branch -D master
git push origin --delete master

msg "Creating an empty, orphaned \`master\` branch"
git checkout --orphan master
git reset --hard
git commit --allow-empty -m "Initial commit on master branch"
git push origin master
git checkout $SOURCE

msg "Adding the master branch into the \`public\` folder"
rm -rf public
git worktree add -B master public origin/master

#+++++++++++++++++++++++++ 

# https://gohugo.io/hosting-and-deployment/hosting-on-github/#deployment-via-gh-pages-branch
# This creates a git submodule. 
# Now when you run the hugo command to build your site to public, the created public directory will have a different remote origin (i.e. hosted GitHub repository). You can automate some of these steps with the following script.

	# git submodule add -b master git@github.com:Lulliter/LAC-maps.git public

# git@github.com:Lulliter/LAC-maps.git
