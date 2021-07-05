# DITA flagging

If you can "badge" content variations with *either* an icon *or* a text string, DITA flagging is the recommended approach. Define these flagging badges in your DITAVAL files. 

```xml
<val>
  <!-- The following two badges insert an icon at the beginning of the flagged content -->
  <!-- with the alt-text string appearing as hover or alt-reader text. -->    
  <prop att="product" action="flag" val="cloud-compute-yes-section">
      <startflag imageref="images/badge_cloud-compute-yes-section.png">
        <alt-text>This section applies to the CloudSquared Cloud Compute product.</alt-text>
      </startflag>
  </prop>
  <prop att="product" action="flag" val="cloud-compute-no-section">
      <startflag imageref="images/badge_cloud-compute-no-section.png">
        <alt-text>This section does not apply to the CloudSquared Cloud Compute product.</alt-text>
      </startflag>
  </prop>

  <!-- The next two badges insert the alt-text string at the beginning of the flagged content. -->
  <prop att="product" action="flag" val="cloud-net-yes-section">
      <startflag>
        <alt-text>[Cloud Net supported] </alt-text>
      </startflag>
  </prop>
  <prop att="product" action="flag" val="cloud-net-no-section">
      <startflag>
        <alt-text>[Cloud Net not supported] </alt-text>
      </startflag>
  </prop>
</val>

```

DITA flagging has the additional benefit of supporting multiple values for flagging attributes. In the following example, the <p> element is badged for both cloud-compute-yes-section and cloud-net-yes-section.    

```xml
<p product="cloud-compute-yes-section cloud-net-yes-section">
Contact Customer Support for Patch-2019-2335.
</p>
```
 
DITA processors *should* generate two instances of the badge icon or badge text at the beginning of the targeted element. This technique may be the only way with DITA flagging to generate *both* an icon and a text message.     