# MiniSiteTemplate

## Location
This is a template for creating a mini Project website  

+ Internal link (only I can see):   
/Users/luisamimmi/My Drive/Github/MiniSiteTemplate
+ Public link on GithubPages:  https://lulliter.github.io/MiniSiteTemplate/

## Content

![Content of the Exe Repo](./images/MiniSiteTemplate.png)

## Steps to setup and launch new mini-site

1. on Github: Create new repo `whateverthename`
2. on Terminal (in the parent Local dir): Clone remote report 
	`git clone "https://github.com/lulliter/whateverthename.git"` 

3. on Local: Copy the content of example
4. on Github: Scroll down to the Repo / Setting/ Github Pages section 
	`click the drop down menu under “Source” and click “master branch”`

5. on Local: make some adaptation / add content 
6. (on Terminal/RStudio: Build the site locally (or see `./build_site.R`))
	+ actually, now the shell script `./_render-deploy.sh` invokes and run  `./build_site.R`
7. on Terminal/RStudio: git add/commit/push (or see `./_render-deploy.sh`)
	

## Important

**R Markdown websites** can be hosted using GitHub Pages in 2 ways 

1. [_IM USING THIS!_] With two additions to the standard site configuration:
        + Add a file named `.nojekyll` to your site source code directory (this tells GitHub Pages to not process your site with the Jekyll engine).
        + Change your output directory to “.” within `_site.yml`. For example: `output_dir: "."` ( _using this configuration your source code, data, and everything else in your repository is all publicly available alongside your generated website content._ ).

2. Alternatively, you can configure GitHub Pages ⧉ to publish from a /docs subdirectory of your repository. If you work in this configuration you should change your output directory to “docs” within _site.yml. For example:`output_dir: "docs`"

## Testing
I am learning how do use `git branch` and created a branch named `like_andrew` (where I attach features like [here](https://talks.andrewheiss.com/2021-03-04_uga-markdown/) )


## Acknowledgements
This is built using the default Jekyll configuration found in Github [check](https://jekyllrb.com/docs/configuration/default/)

+ Jekyll supports loading data from YAML, JSON, and CSV files located in the  `_data` directory. 
	- Note that CSV files must contain a header row.

+ Great tutorial [Nick Strayer & Lucy D’Agostino McGowan](http://nickstrayer.me/RMarkdown_Sites_tutorial/)
	- [Github](https://github.com/nstrayer/personal_site)
+ Key documentation: [yihui](https://bookdown.org/yihui/rmarkdown/rmarkdown-site.html#site-configuration)
+ A minimal example [here](https://github.com/yihui/blogdown-jekyll)
 

