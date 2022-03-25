#==================================RESOURCES ON RMARKDOWN_SITE=====================================#
#   https://bookdown.org/yihui/rmarkdown/rmarkdown-site.html
#   https://rmarkdown.rstudio.com/lesson-13.html
#==================================================================================================#



#=========================================== (In Root ./ start) ================================================#
########################################################
# HUGO command line to build site 
# https://gohugo.io/commands/hugo/ (documentation)
########################################################
# Go To ./ folder
cd ~/GoogleDrive/source

# hugo
# hugo -t hugo-academic # does't work

hugo -v -t hugo-academic
# If you want to see the preview of the site, look to the viewer pane of Rstudio or use 
# hugo server -D 
# in the terminal.
#=========================================== (end) ================================================#


#=========================================== (back to ./publlic) ================================================#
########################################################

cd ./


# Go To (git) ./sub-folder (one below the Rproj wdir) 
#	cd ./MexicoWaterSurvey
	ls
	git remote show origin 

# check status
git status

# Add ALL changes to git Index.
git add -A

# Create Std commit "message"....
msg="rebuilt on `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

# ... Commit Those changes.
git commit -m "$msg"

		# or git commit -m "Kable Table in SAMPLE2"
		# git commit -m "changed to _site"
		
# Push source and build repos.
git push origin master

# # Come Back up to the Project Root
# cd ..
# 
# # Delete the local repository in the shell:
# rm -rf myrepo/