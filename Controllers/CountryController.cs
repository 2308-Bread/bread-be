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
  public IEnumerable<CountryBread> GetCountryAndBreads(string countryName)
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
    
    IEnumerable<CountryBread> countryandbreads = _dapper.LoadData<CountryBread>(sql);
    return countryandbreads;
  }
}