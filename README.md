# About LaTeX-boilerplate

![Screenshot](https://github.com/gbluma/latex-boilerplate/raw/master/screenshot.png)

([Here is an example PDF](https://github.com/gbluma/latex-boilerplate/blob/master/example.pdf?raw=true))

I built this LaTeX template as the starting point for all of my homework assignments. I've used it with much success over the past couple years -- speeding up my workflow -- but it is not 100% perfect.

I used to create LaTeX documents from scratch at the start of every assignment, but I would spend hours tweaking the same things on each assignment (i.e. margins, fonts, captions, etc). I also found that I was copy-and-pasting between projects to save time. Over time, it just made sense to build an official template -- this is it!

This template is an opinionated work in progress. It was designed to work around *my* needs, but I appreciate feedback in order to make this more useful for everyone.

The design choices I made center around the tools I use. Here are a few of them:

 * Vim
 * gnumake
 * Preview.app (OS X document viewer)
 * Markdown (via Pandoc)

My workflow is efficient, but there are some concessions. 

 1.) The primary document is written in markdown, but not everything comes out exactly as I like (e.g. code, headers, graphics, and tables). But since Pandoc just ignores LaTeX, I can include it in my markdown and it falls through to the generated document. Thus, I use copious amounts of LaTeX in my markdown files.

 2.) Not everyone likes calling `make test` to build their document, but I find it handy. Inside Vim I've bound a key sequence to quickly build a PDF and show it to me. The Vim command do this is `:map ,t :w\|:!make test<cr>`. With this, I can write a sentence, hit escape, and then comma and `t`, and I see the changes I made immediately.

 3.) This template is largely configured for OS X, although I am moving towards supporting Linux as well. Currently I use an applescript called `focus` which refreshes the PDF document in Preview.app. This is handy for OS X, but I have not written a similar script for Linux yet.

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
    
    # check text for sloppy word usage
    make check

