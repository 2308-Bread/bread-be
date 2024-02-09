using System.Collections.Generic;

namespace BreadAPI.Models
{
    public class ApiResponse
    {
        public CountryResponse Country { get; set; }
        public BreadsResponse Breads { get; set; }
    }

    public class CountryResponse
    {
        public CountryDataResponse Data { get; set; }
    }

    public class CountryDataResponse
    {
        public int Id { get; set; }
        public string Type { get; set; }
        public CountryAttributesResponse Attributes { get; set; }
        public CountryRelationshipsResponse Relationships { get; set; }
    }

    public class CountryAttributesResponse
    {
        public string Name { get; set; }
        public string Description { get; set; }
    }

    public class CountryRelationshipsResponse
    {
        public BreadsRelationshipResponse Breads { get; set; }
    }

    public class BreadsRelationshipResponse
    {
        public BreadsDataResponse[] Data { get; set; }
    }

    public class BreadsDataResponse
    {
        public int Id { get; set; }
        public string Type { get; set; }
        public BreadsAttributesResponse Attributes {get;set;}

    }

    public class BreadsAttributesResponse
    {
        public string Name { get; set; }
        public string Recipe { get; set; }
        public string Description { get; set; }
    }

    public class BreadsResponse
    {
        public BreadsDataResponse[] Data { get; set; }
    }

    public class CountryBreadResponse
    {
        public int Id { get; set; }
        public int CountryId { get; set; }
        public int BreadId { get; set; }
        public string Name { get; set; } = "";
        public string Recipe { get; set; } = "";
        public string Description { get; set; } = "";
        public string CountryName { get; set; } = "";
        public string CountryDescription { get; set; } = "";
    }
}
