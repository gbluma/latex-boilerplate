# About LaTeX-boilerplate

![Screenshot](https://github.com/gbluma/latex-boilerplate/raw/master/screenshot.png)

This project is a placeholder for all of my new LaTeX documents.  I have spent
more hours than I care to admit customizing a document format mid-project I've
learned my lesson.  I'd much rather maintain a separate project that can allow
me to get up and running quickly.

Also, I've included a short applescript file called `focus` which refreshes
the PDF document in Preview.app. This hooks into `make` so whenever you 
have new changes just run `make test` and you'll see your new changes.

If you have any recommendations I'd like to hear them.

Thanks.

# How to use it?

Do this and you should have be ready to go.

    cd ~/Documents
    git clone git://github.com/gbluma/latex-boilerplate.git newdocument
    cd newdocument
    make && make open

    # do work
    make test

By default, the Makefile will build TeX files from any markdown files that
exist in your working directory. This has a requirement on Pandoc, so if you
don't have it or you don't want to use that workflow, then update the Makefile
to not call `convert.sh`.

I think Pandoc is a nice addition. It does get me in trouble from time to time
but overall it saves effort. I can use standard Markdown syntax for 95% of my
writing (bold, italic, code, titles, etc.) and then drop back to LaTeX for the
hard stuff (tables and graphics). 
