---
layout: post
title:  "Selenium Python and Pretend Firefox"
date:   2018-07-21 13:04:36 +0100
categories: selenium python selenium
---

Found example code.

Installed Selenium on Python 3 installation on laptop.

pip install selenium
Had to use pip3 as python 2 the default.

Ran code it needed downloaded it and placed it in /bin/ so that it would be available.
Itfailed due to not enough capabilities.

Tried successfully on Win7 PC.

Figured the problem on Trisqel Linux laptop was a pretend Firefox called Icecat (though Iceweasel and aBrowser may have the same issue.

Installed real Firefox and now everything is fine.

Modified example code to open www.aaronrobson.uk click the CV button and start looking at the elements that represent the links to the CV pdf.

Initial of how to call a selenium build from changing GitHub io builds and how to run headless in a way that Travis can do.

Jekyll also offers powerful support for code snippets:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
