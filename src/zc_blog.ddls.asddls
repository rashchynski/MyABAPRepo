@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view for Blog'
define root view entity ZC_BLOG as select from ZI_BLOG
composition[0..*] of ZI_BLOG_TO_TAG as _tag
{
    key Id as Id,
    Title,
    Author,
    Created,
    
    _tag // Make association public
}
