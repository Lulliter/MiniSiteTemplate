#==================================================================================================#
#                             ~/GoogleDrive/03_d_R-projects/MiniSiteTemplate/build_site.R    
#								{This is invoked by {_render-deploy_rifare.sh}
#            										 
# ============== 1) list which files will be removed (all ".html(s)" + "site_libs/");
# ============== 2) actually remove the above files;
# ============== 3) Render again the ./BrazilWaterSurvey/ public site. 
#==================================================================================================#


# ======= https://bookdown.org/yihui/rmarkdown/rmarkdown-site.html

# ======= Set our working directory. 
#This helps avoid confusion if our working directory is 
# not our site but the .Rproject. 
# setwd("~/GoogleDrive/03_d_R-projects/MiniSiteTemplate")


# ======= list which files will be removed
rmarkdown::clean_site(preview = TRUE)
# 
# ======= actually remove the files
rmarkdown::clean_site()


# =======render your sweet site. 
rmarkdown::render_site()

