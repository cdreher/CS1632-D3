# CS 1632 - DELIVERABLE 3: Automated System Testing of a Web Application
Spring Semester 2019

## Deliverable 3

For this assignment, you (NOT with a partner) will create a simple web application and test it using automated systems-level testing with Katalon.  This web application will accept three parameters, entered via textboxes, on the main page.  These three parameters will be the symbol you wish to use for "true", the symbol you wish to use for "false", and the size of the truth table (in terms of 2 ^ x, e.g., entering three will create three binary digits which means the size of the truth table is 2 ^ 3 == 8).  You will then display the truth table for the operations AND, OR, NAND, and NOR.

If invalid data is entered (i.e., a multi-character true or false symbol, the same character used for true and false, or anything other than an integer >= 2 for the size), an error page should be displayed.

If the user attempts to go to a URL other than one specified, a separate error page specifying the issue, along with a 404 status code, should be displayed.

I am not interested in how "pretty" you can make the output; there is no need to add CSS or style the page in other ways.  For those of you who have done web development before and for whom this may seem painful, simply imagine that you have time-travelled back to 1995, before CSS was invented.  This is also good practice in case you do end up time-travelling to the mid-1990s (the first version of Ruby was released in 1995, so you will still be good on that score, although the documentation was originally written only in Japanese).

Requirements for this program are in the `requirements.md` file in this directory.  In case of ambiguity, please see the sample output as an example of what to display and how the system should work.

All code and tests should be on GitHub in a private repository accessible to me and the TA.

Your repository MUST be named D3.
