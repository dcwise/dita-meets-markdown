# Conref and keyref references to badge libraries

If you have built a library for your badges and assigned each of them a unique ID, you can use @conref or @conkeyref to insert them by reference them into your current topic. 

Let's assume that you have created a badging library named `library_content-badges.dita` with a topic @id of `library1`. That library contains the following badge definition.  

```xml
<p id="p_badge_tag_cloud-compute_topic_yes">
  <image href="images/tag_cloud-compute_supported.svg">
    <alt>This topic applies exclusively to Cloud Compute.</alt>
  </image>
  <ph> This topic applies exclusively to Cloud Compute.</ph>
</p>
```

To insert this badge using @conref (URL referencing), you would enter the following markup.

```xml
<p conref="library_content-badges.dita#library1/p_badge_tag_cloud-connect_topic_yes"/>
```

To insert this badge using DITA keys, you must first define a key for the badging library in your current map.

```xml
<topicref keys="badgelib" href="library_content-badges.dita"/>
```

You can then reference the badge using @conkeyref (indirect referencing).

```xml
<p conkeyref="badgelib/p_badge_tag_cloud-connect_topic_yes"/>
```

The @conref and @conkeyref mechanisms reference the same badge definition in the same badge library file. Using indirect, key-based references is a wise investment because it will provide you with flexibility in managing multiple badge library files down the road. Change the key definition once, all @conkeyref references inherit the new badge definition automatically.