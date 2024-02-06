namespace BreadAPI.Models
{
  public class UserBread
  {
    public int UserBreadId {get; set;}
    public int BreadId {get; set;}
    public string Name {get; set;} = "";
    public string Description {get; set;} = "";
    public int UserId {get; set;}
    public string FirstName {get; set;} = "";
    public string LastName {get; set;} = "";
    public string Email {get; set;} = "";
  }
}