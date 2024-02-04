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
}