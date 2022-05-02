#==================================RESOURCES ON RMARKDOWN_SITE=====================================#
#   https://bookdown.org/yihui/rmarkdown/rmarkdown-site.html
#   https://rmarkdown.rstudio.com/lesson-13.html
#==================================================================================================#



# ========================= (In Root ./ start) ================================================#
########################################################
# RMARKDOWN SITE command line to build site 
 
########################################################
# Go To ./ folder
cd ~/'My Drive'/Github/MiniSiteTemplate

# list which files will be removed
R -e 'rmarkdown::clean_site(preview = TRUE)'

# actually remove the files
R -e 'rmarkdown::clean_site()'


# serve site
R -e 'rmarkdown::render_site()'
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