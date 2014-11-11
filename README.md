Fonts
=====

The two web fonts we use are: 'Abril Display' intended for
headings, and 'PT Sans' for body copy. The full CSS font stacks are:

Headings: `font-family: 'abril-display', 'Abril Display', Palatino, 'Palatino Linotype', serif;`
Body:     `font-family: 'pt-sans', 'PT Sans', Helvetica, Arial, sans-serif;`


Layout
======


The `includes` folder contains `footer`, `navigation`, `head` and
`scripts` which form a basic template and should be included on all the
pages. Hence, these are included into the `default` layout and so any
page that needs these components should have the following front matter:

---
layout: default
---
