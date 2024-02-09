using BreadAPI.Data;
using BreadAPI.Dtos;
using BreadAPI.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;

namespace BreadAPI.Controllers;

[ApiController]
[Route("[controller]")]
public class CountryController : ControllerBase
{
  DataContextDapper _dapper;
  public CountryController(IConfiguration config)
  {
    _dapper = new DataContextDapper(config);
  }

  [HttpGet("GetCountries")]
  public IEnumerable<Country> GetCountries()
  {
    string sql = @"
      SELECT [CountryId],
        [Name],
        [Description]
      FROM Countries";
    IEnumerable<Country> countries = _dapper.LoadData<Country>(sql);
    return countries;
  }

  [HttpGet("GetCountryAndBread/{countryName}")]
  public ApiResponse GetCountryAndBreads(string countryName)
  {
    string sql = @"
      SELECT Countries.CountryId AS CountryId,
        Countries.Name AS CountryName,
        Countries.Description AS CountryDescription,
        Breads.BreadId,
        Breads.Name,
        Breads.Description,
        Breads.Recipe
      FROM Countries
      JOIN CountryBreads ON Countries.CountryId = CountryBreads.CountryId
      JOIN Breads ON CountryBreads.BreadId = Breads.BreadId
      WHERE Countries.Name = '" + countryName + "'";

      IEnumerable<CountryBreadResponse> countryandbreads = _dapper.LoadData<CountryBreadResponse>(sql);

        var response = new ApiResponse
        {
            Country = new CountryResponse
            {
                Data = new CountryDataResponse
                {
                    Id = countryandbreads.First().CountryId,
                    Type = "country",
                    Attributes = new CountryAttributesResponse
                    {
                        Name = countryandbreads.First().CountryName,
                        Description = countryandbreads.First().CountryDescription
                    },
                    Relationships = new CountryRelationshipsResponse
                    {
                        Breads = new BreadsRelationshipResponse
                        {
                            Data = countryandbreads.Select(b => new BreadsDataResponse
                            {
                                Id = b.BreadId,
                                Type = "bread"
                            }).ToArray()
                        }
                    }
                }
            },
            Breads = new BreadsResponse
            {
                Data = countryandbreads.Select(b => new BreadsDataResponse
                {
                    Id = b.BreadId,
                    Type = "bread",
                    Attributes = new BreadsAttributesResponse
                    {
                        Name = b.Name,
                        Description = b.Description,
                        Recipe = b.Recipe
                    }
                }).ToArray()
            }
        };
        return response;
  }
}