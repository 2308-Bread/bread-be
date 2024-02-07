namespace BreadAPI.Models
{
  public class CountryBread
  {
    public int CountryBreadId { get; set; }
    public int CountryId { get; set; }
    public int BreadId { get; set; }
    public string BreadName {get;set;} = "";
    public string Recipe {get;set;} = "";
    public string Description {get;set;} = "";
    public string CountryName {get;set;} = "";
    public string CountryDescription {get;set;} = "";
  }
}