
# About LaTeX-boilerplate

This project is a placeholder for all of my new LaTeX documents. After
spending too many hours customizing a document mid-project I'd much rather
maintain a separate project that can allow me to get up and running quickly.

Also, I've included a short applescript file called `focus` which refreshes
the PDF document in Preview. This is hooked into `make` so whenever you 
have new changes just run `make` and you'll see your new changes.

If you have any recommendations I'd like to hear them.

Thanks.
-- Garrett

# How do I use it?

Do this and you should have be ready to go.

    cd ~/Documents
    git clone git://github.com/gbluma/latex-boilerplate.git newdocument
    cd newdocument
    make && make open


