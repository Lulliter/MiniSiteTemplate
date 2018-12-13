	# Go To (git) ./ folder
	cd ~/GoogleDrive/03_d_R-projects/MiniSiteTemplate
	ls
	git remote show origin 

# check status
git status

# Add ALL changes to git Index.
git add -A

# Create Std commit "message"....
msg="rebuil on `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

# ... Commit Those changes.
git commit -m "$msg"


# Push source and build repos.
git push origin master

# # Come Back up to the Project Root
# cd ..
# 
# # Delete the local repository in the shell:
# rm -rf myrepo/