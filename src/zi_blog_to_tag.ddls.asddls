@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Blog to Tag Interface view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_BLOG_TO_TAG
  as select from zblog_to_tag
  association        to parent ZC_BLOG as _blog on $projection.BlogId = _blog.Id
  association [1..1] to ztag           as tag   on tag.id = zblog_to_tag.tag_id
{
  key zblog_to_tag.id      as Id,
  key zblog_to_tag.blog_id as BlogId,
  key zblog_to_tag.tag_id  as TagId,

      tag,
      _blog,

      tag.title
}
