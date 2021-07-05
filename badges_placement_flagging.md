# Attribute tagging for DITA flagging

If you are using DITA flagging to implement badging, you need to place the flagging attribute value in the first content-bearing element of the "badged" content. 

```xml
<body>
  <p product="cloud-net-yes-body">First paragraph.</p>
  <p>Running text</p>
</body>
```

```xml
<section>
  <title>Security considerations</title>
  <p product="cloud-net-yes-section">Running text</p>
</sections>
```

Tagging non-content-bearing elements such as <body> or <section> will not generate flagged (badged) output. 
 