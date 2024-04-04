@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for ZBLOG'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_BLOG as select from zblog 
association[1..*] to ZI_BLOG_TO_TAG as tag on tag.BlogId = zblog.id

{
    key id as Id,
    title as Title,
    author as Author,
    link as Link,
    created as Created, 
    
    tag
}
