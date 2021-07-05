# A typical use case for content badging

A startup named CloudSquared develops resource monitoring software for cloud-based frameworks. For its first product, Cloud Compute Monitoring, the content development team develops a complete documentation set.

![Use case - one product](./images/use-case_1.png)

A year later CloudSquared releases Cloud Net Monitoring so the content development team uses DITA conditional filtering to publish separate Cloud Compute and Cloud Net publications. 

![Use case - two products](./images/use-case_2.png)

Content developers assign filtering attributes such as `product="cloud-compute"` or `product="cloud-net"` to topics, sections, or elements that need to be filtered OUT of a product-specific deliverable. 

The following year, CloudSquared releases Cloud Connect and completes the monitoring suite. The writing team then uses conditional filtering to publish three separate publications. 

![Use case - three products](./images/use-case_3.png)

Content developers add the filtering attribute `product="cloud-connect"` to those topics, sections, or elements that need to be filtered OUT of the other two product-specific deliverables. 

Six months after this launch, Marketing receives feedback that emphasizing common design and services across the three suite components will enhance customer perception that CloudSquared can consolidate its achievements and move on to new product lines. Toward that end, Product Management requests that the content development team consolidate the three, product-specific publications into one, multi-product publication. Both generic and product-specific information would need to appear in the same deliverable.

![Use case - one combined product](./images/use-case_4.png)

When transitioning from conditional filtering to badging, note that filtering metadata is *useful* in identifying where product-specific information lives in your sources but *useless* as markup to implement badging. In DITA, the logic to include or exclude elements tagged with filtering attributes such as @product or @audience lives in DITAVAL scripts outside the DITA topics themselves.  

Filtering markup in a topic: 

```xml
<p product="cloud-connect">Cloud Connect is great.</p>
```

Filtering markup in a DITAVAL script:

```xml
<val>
   <prop att="product" val="cloud-compute" action="exclude" />
   <prop att="product" val="cloud-net" action="exclude" />
   <prop att="product" val="cloud-connect" action="include" />
</val>
```

DITA filtering does a brilliant job supporting a one-to-many relationship between source content and generated content. One DITA source topic tagged with multiple filtering attribute values can generate multiple, distinct versions of itself. The logic for content badging involves a one-to-one relationship between a source topic and its generated version. All the "badges" or badging metadata that you need to include in that one, multi-platform or multi-product version of a topic must be  included in the one source DITA topic *and* included in generated output topic.    

The logic that you used in designing DITA filtering is transferable to the logic for DITA content badging.
  
