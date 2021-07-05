# Library references for topics

The same principle applies to inserting references to badging libraries. 

The following markup places the badge in the first sentence of the body of the topic.

```xml
<topic id="test1">
  <title>Topic title</title>
  <shortdesc>Short description</shortdesc>
  <body>
   <p conref="library_content-badges.dita#badge-lib/p_badge_tag_cloud-compute_topic_no"/>
   <p>Running text.</p>
  </body>
</topic>
```

The following markup places the same badge inside the `<abstract>` element at the beginning of the topic.

```xml
<topic id="test2">
  <title>Topic title</title>
  <abstract>
    <shortdesc>Short description</shortdesc>
    <p conref="library_content-badges.dita#badge-lib/p_badge_tag_cloud-compute_topic_no"/>
  </abstract>
  <body>
    <p>Running text</p>
  </body>
</topic>
```