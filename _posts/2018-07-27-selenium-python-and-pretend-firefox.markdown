---
layout: post
title:  "Selenium Python and Pretend Firefox"
date:   2018-07-27 21:12:35 +0100
categories: selenium python selenium
---

I wanted to play around with Selenium to learn how QA folks run tests against websites.

First things first I found some example code [here][selenium-python-getting-started]:

{% highlight python %}
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

driver = webdriver.Firefox()
driver.get("http://www.python.org")
assert "Python" in driver.title
elem = driver.find_element_by_name("q")
elem.clear()
elem.send_keys("pycon")
elem.send_keys(Keys.RETURN)
assert "No results found." not in driver.page_source
driver.close()
{% endhighlight %}

Installed Selenium on Python 3 installation on laptop.

`pip install selenium`
Had to use `pip3` as `python2` the default.

Ran code it needed a browser driver for Firefox called `geckodriver` downloaded it and placed it in `/bin/` so that it would be available.
It failed due to not enough capabilities.

Tried successfully on Win7 PC.

Figured the problem on Trisquel Linux laptop was a pretend Firefox called Icecat (though Iceweasel and aBrowser may have the same issue.
[WebRTC][webrtc] support seemed like the missing part.
After I installed the real Firefox everything is fine.

Modified example code to open
[this website][this-website]
click the CV button and start looking at the elements that represent the links to the CV pdf.

Like this:
{% highlight python %}
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

driver = webdriver.Firefox()

driver.get("http://www.aaronrobson.uk")

cvlink = driver.find_element_by_link_text('CV')
cvlink.click()

cvlinks = driver.find_element_by_id("cvlinks")

driver.close()
{% endhighlight %}


Initial of how to call a selenium build from changing GitHub io builds and how to run headless in a way that Travis can do.

[selenium-python-getting-started]: http://selenium-python.readthedocs.io/getting-started.html
[this-website]: http://www.aaronrobson.uk/
[webrtc]: https://webrtc.org/
