# Badging and scope 

When we content developers are working in our DITA editor and are identifying elements that we want to badge, we see where `<topic>` and `<section>` elements begin and end. We see the scope of the element relative to the topic displayed in our DITA editor. Unfortunately, these topic and section boundaries are neither visible nor recoverable to customers. In a running PDF, where does the current "topic" or "section" end? If we chunk multiple source topics so they generate one HTML5 page in output, wouldn't the topic boundaries be misleading? If I set a topic-level badge to indicate that no content in the topic applies to a particular product, what happens if another writer conref's a section from my topic? That conref'd section has no section badge. Messy stuff. 

There is no technical solution in the XML markup. Consider the following best practices when defining the scope of each badge.

1. Conduct formal tests of your content and the boundaries of what you want to badge. Use colored highlighters on paper to test your collective understanding and alignment. 

2. Avoid generic, unscoped badges. Design your badges to have a specific granularity (scope), for example by topic, by section/step, or by element.

   Caution: Although it is technically possible to create badges scoped to the level of DITA block and inline elements, many teams avoid granular badging for practical reasons -- maintenance.
 
   Practically, attempting to use the same badges for elements that you use for topics or sections can create a visual and logical train wreck. Teams that have successfully worked with badged documentation for multiple releases turn to `<note>` elements or in-line explanations for anything more granular than sections. Others use DITA flagging to color-code platform-specific, inline information.

3. Create and maintain formal specifications. 