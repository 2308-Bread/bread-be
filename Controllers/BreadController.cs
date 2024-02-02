using BreadAPI.Data;
using BreadAPI.Dtos;
using BreadAPI.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;

namespace BreadAPI.Controllers;

[ApiController]
[Route("[controller]")]
public class BreadController : ControllerBase
{
  DataContextDapper _dapper;
  public BreadController(IConfiguration config)
  {
    _dapper = new DataContextDapper(config);
  }

  [HttpGet("GetBreads")]
  public IEnumerable<Bread> GetBreads()
  {
    string sql = @"
      SELECT [BreadId],
        [Name],
        [Recipe],
        [Description]
      FROM Breads";
    IEnumerable<Bread> breads = _dapper.LoadData<Bread>(sql);
    return breads;
  }
}