ruby-appcast
============

ruby sparkle.xml generator

Tested with ruby 2.0

### Very simple (hard-coded) example

```ruby
#!/usr/bin/env ruby
  
require 'rexml/document'
require_relative 'appcast'

appcast = Screenhero::Sparkle::AppCast.new(name: "MyAwesomeApp", description: "MyAwesomeApp updates",
  dsa_priv: File.open("/path/to/dsa_priv.pem", File::RDONLY).read,
  appcast_url: "http://myawesomeapp.com/update/sparkle.xml")
appcast.add_item("1.0.1", "/path/to/MyAwesomeApp-1.0.1.dmg",
  "http://myawesomeapp.com/update/MyAwesomeApp-1.0.1.dmg", "http://myawesomeapp.com/update/release_notes.html")
  
puts appcast.to_s
```

### Example Output:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<rss xmlns:sparkle='http://www.andymatuschak.org/xml-namespaces/sparkle' xmlns:atom='http://www.andymatuschak.org/xml-namespaces/sparkle' version='2.0'>
  <channel>
    <title>MyAwesomeApp</title>
    <description>MyAwesomeApp updates</description>
    <language>en</language>
    <pubDate>Thu, 07 Aug 2014 22:12:57 -0700</pubDate>
    <link>http://myawesomeapp.com/update/sparkle.xml</link>
    <atom:link type='application/rss+xml' href='http://myawesomeapp.com/update/sparkle.xml'/>
    <item>
      <title>MyAwesomeApp 1.0.1</title>
      <sparkle:releaseNotesLink>http://myawesomeapp.com/update/release_notes.html</sparkle:releaseNotesLink>
      <pubDate>Thu, 07 Aug 2014 22:12:57 -0700</pubDate>
      <guid isPermaLink='false'>MyAwesomeApp 1.0.1</guid>
      <enclosure type='application/dmg' sparkle:version='1.0.1' length='1031984' sparkle:dsaSignature='MEQCIDbfctm3pCqJw2SSbZGHyrH3XKtvsw/VICvAHVB3CBRsAiAcd6RDoRwi
8ACxEHsNGeepi5A0dZV0KOXT4pJm70AqoA==
' url='http://myawesomeapp.com/update/MyAwesomeApp-1.0.1.dmg'/>
    </item>
  </channel>
</rss>
```
