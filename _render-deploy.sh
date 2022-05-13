#==================================RESOURCES ON RMARKDOWN_SITE=====================================#
#   https://bookdown.org/yihui/rmarkdown/rmarkdown-site.html
#   https://rmarkdown.rstudio.com/lesson-13.html
#==================================================================================================#



# ========================= (In Root ./ start) ================================================#
########################################################
# Rmarkdown command line to build site 
#  
########################################################

# ====== CLEAN 1/2 (list which files will be removed)
# USING         Rscript -e "Rcode"
Rscript -e "rmarkdown::clean_site(preview = TRUE)"
# ====== CLEAN 2/2  (actually remove the files)
Rscript -e "rmarkdown::clean_site()"

# ====== RENDER the entire site
Rscript -e "rmarkdown::render_site()"
# render a single file only
#Rscript -e "rmarkdown::render_site("G20Journ.Rmd")"


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